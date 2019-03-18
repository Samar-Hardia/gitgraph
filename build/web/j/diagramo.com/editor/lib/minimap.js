"use strict";

function Minimap(bigCanvas, minimapContainer){
    /**Keeps track it minimap is selected or not*/
    this.selected = false;
    
    /**The big canvas DOM object (canvas). You can get it also by document.getElementById('map')*/
    this.bigCanvas = bigCanvas;
    
    /**The minimap DOM object (div). You can get it also by document.getElementById('minimap')*/
    this.minimapContainer = minimapContainer;

    /*Stores reference to div selection rectangle (as a div)*/
    this.selection = document.createElement("div");
    
    
    this.selection.id = "selection";

    //create a canvas to paint the minimap on
    /**Reference to small DOM canvas (minimap)*/
    this.smallCanvas = document.createElement("canvas");
    this.smallCanvas.style.width = "100%";
    this.smallCanvas.style.height = "100%";

    //the size has to be specified so we get a minimap that has the same proportions as the map
    this.minimapContainer.style.height = Minimap.prefferedHeight + "px"; //initially it's zero
    this.minimapContainer.style.width = Minimap.prefferedWidth + "px";

    this.minimapContainer.appendChild(this.smallCanvas);
    this.minimapContainer.appendChild(this.selection);


    //If big canvas is scrolled --effect--> update minimap position
    this.bigCanvas.parentNode.onscroll = function (scrollObject){
        return function(event){
            scrollObject.updateMinimapPosition();
        }
    }(this);


    //Minimap move mouse --effect--> update map position
    this.minimapContainer.onmousemove = function(aMinimapObject){
        return function(event){
            aMinimapObject.onScrollMinimap(event);
            return false;
        }
    }(this);


    //Selection mouse down --effect--> select minimap
    this.selection.onmousedown = function(aMinimapObject){
        return function(event){
            /*prevent Firefox to allow canvas dragg effect. By default FF allows you
             * to drag the canvas out of it's place, similar to drag an image*/
            event.preventDefault();
            aMinimapObject.selected = true;
        }
    }(this);

    //Canvas mouse down --effect--> center selection
    this.smallCanvas.onmousedown = function(aMinimapObject){
        return function(event){
            aMinimapObject.selected = true;
            aMinimapObject.onScrollMinimap(event);
        }
    }(this);

    this.ratio = 0;

    this.initMinimap();
}


/**Preffered/default width*/
Minimap.prefferedWidth = 115;

/**Preffered/default height*/
Minimap.prefferedHeight = 250;

Minimap.prototype = {

    constructor : Minimap,
    
   
    updateMinimap:function(){
        //this part should be moved somewhere more relevant, only here for testing
        var canvas = this.bigCanvas;
        

        var thisCtx = this.smallCanvas.getContext("2d");
        thisCtx.beginPath();
        thisCtx.clearRect(0,0,this.smallCanvas.width,this.smallCanvas.height)
        thisCtx.closePath();
        thisCtx.stroke();
        thisCtx.save();

        /*@see http://STACKoverflow.com/questions/3448347/how-to-scale-an-imagedata-in-html-canvas*/
        thisCtx.scale(this.ratio/100 , this.ratio/100 );
        thisCtx.drawImage(canvas, 0,0);
        thisCtx.restore();
    },


    initMinimap:function(){

        var horizontalRatio = Minimap.prefferedWidth * 100 / ($(this.bigCanvas).width()); //horizontal ratio
        
        var verticalRatio = Minimap.prefferedHeight * 100 / ($(this.bigCanvas).height()); //vertical ratio
        
        
        //pick smaller ratio
        if(horizontalRatio < verticalRatio){
            this.ratio = horizontalRatio;            
        }
        else{
            this.ratio = verticalRatio;
        }
        
        //recompute width and height
        var width = $(this.bigCanvas).width()  * this.ratio / 100;
        var height = $(this.bigCanvas).height()  * this.ratio / 100;
        
            
        //update minimap container sizes
        this.minimapContainer.style.width = width +"px";
        this.minimapContainer.style.height = height + "px";


        //small canvas will fill all it's parent space (it's a gas :) )
        this.smallCanvas.width = $(this.minimapContainer).width();
        this.smallCanvas.height = $(this.minimapContainer).height();

        //compute selection size
        var selectionWidth = this.ratio * ($(this.bigCanvas.parentNode).width() - scrollBarWidth) / 100;
        var selectionHeight =  this.ratio * ($(this.bigCanvas.parentNode).height() - scrollBarWidth) / 100;
        if(selectionWidth > $(this.minimapContainer).width()){ //if selection bigger than the container trim it
            selectionWidth = $(this.minimapContainer).width();
        }
        if(selectionHeight > $(this.minimapContainer).height()){ //if selection bigger than the container trim it
            selectionHeight = $(this.minimapContainer).height();
        }

        //update selection
        this.selection.style.width = selectionWidth + "px";
        this.selection.style.height = selectionHeight + "px";
    },

    updateMapPosition:function(){
        var x = parseInt(this.selection.style.left.replace("px",""));//+border
        var y = parseInt(this.selection.style.top.replace("px",""));//+border

        this.bigCanvas.parentNode.scrollLeft = x / this.ratio * 100;
        this.bigCanvas.parentNode.scrollTop = y / this.ratio * 100;
    },


    updateMinimapPosition:function(){
        //get big map's offset
        var x = parseInt(this.bigCanvas.parentNode.scrollLeft);
        var y = parseInt(this.bigCanvas.parentNode.scrollTop);

        //compute minimap's offset
        x = x * this.ratio / 100 ;
        y = y * this.ratio / 100 ;

        //apply the offset
        this.selection.style.left = x + "px";
        this.selection.style.top = y + "px";
    },

    onScrollMinimap:function(event){
        if(this.selected == true){ //we will 'action' only if the select are is selected

            //try to reposition the selection
            var mousePos = this.getInternalXY(event);

            var containerWidth = this.minimapContainer.style.width.replace("px","");
            var containerHeight = this.minimapContainer.style.height.replace("px","");
            var width = this.selection.style.width.replace("px","");
            var height = this.selection.style.height.replace("px","");

            //if we are scrolling outside the area, put us back in
            if(mousePos[0] - width/2 < 0){
                mousePos[0] = width/2;
            }
            if(mousePos[1] - height/2 < 0){
                mousePos[1] = height/2;
            }
            if(mousePos[0] + width/2 > containerWidth){
                mousePos[0] = containerWidth - width/2;
            }
            if(mousePos[1] + height/2 > containerHeight){
                mousePos[1] = containerHeight - height/2;
            }

            //update our minimap
            if(mousePos[0] != undefined){
                this.selection.style.left = mousePos[0] - width/2 + "px";
                this.selection.style.top = mousePos[1] - height/2 + "px";
            }

            //update the actual area
            this.updateMapPosition();
        }
        else{
            this.selected = false;
        }
    },


    getBounds:function(){
        var thisMinX = 0;
        var thisMinY = 0;
        var obj = this.minimapContainer;

        do{
            thisMinX += obj.offsetLeft;
            thisMinY += obj.offsetTop;

            /*offsetParent - Returns a reference to the object that is the current
             *element's offset positioning context*/
        }while(obj = obj.offsetParent);

        /*Add minimap's width and height*/
        var thisMaxX = thisMinX + parseInt(this.minimapContainer.style.width.replace("px",""));
        var thisMaxY = thisMinY + parseInt(this.minimapContainer.style.height.replace("px",""));

        return [thisMinX, thisMinY, thisMaxX, thisMaxY];
    },

    getInternalXY:function(event){
        var position = [];

        var thisBounds = this.getBounds();
        if(event.pageX >= thisBounds[0] && event.pageX <= thisBounds[2] //if event inside [Ox bounds
            && event.pageY >= thisBounds[1] && event.pageY <= thisBounds[3]) //if event inside [Oy bounds
            {
            position = [event.pageX - thisBounds[0], event.pageY - thisBounds[1]];
        }

        return position;
    }
}