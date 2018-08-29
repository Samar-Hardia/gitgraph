<%-- 
    Document   : editor
    Created on : 21 Apr, 2018, 2:16:29 AM
    Author     : sanket
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
        confirm("enter UML interface?");
        </script>

<!DOCTYPE html>
<html>

<head>
        <title>Plotters- an easy way to graphs and charts</title>
         
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
        
        <script type="text/javascript" src="assets/javascript/dropdownmenu.js"></script>    
        
        <link rel="stylesheet" media="screen" type="text/css" href="assets/css/style.css" />
        <link rel="stylesheet" media="screen" type="text/css" href="assets/css/minimap.css" />
        
       
        <script type="text/javascript" src="assets/javascript/jquery-1.11.0.min.js"></script>
       
        <link type='text/css' href='assets/simplemodal/css/diagramo.css' rel='stylesheet' media='screen' />
        <script type="text/javascript" src="assets/simplemodal/js/jquery.simplemodal.js"></script>
          <script type="text/javascript" src="lib/sets/experimental/experimental.js"></script>
       
        
        <script type="text/javascript">
            "use strict";

            var appURL = 'http://diagramo.com/';
            var figureSetsURL = appURL + '/editor/lib/sets';
            var insertImageURL = appURL + '/editor/data/import/';

            function showImport(){
    
                var r = confirm("Current diagram will be deleted. Are you sure?");
                if(r === true){                    
                    $('#import-dialog').modal(); // jQuery object; this demo
                }                
            }
        </script>
        <script src="http://hongru.github.io/proj/canvas2image/canvas2image.js"></script>
        <script type="text/javascript" src="lib/dashed.js"></script>
        <script type="text/javascript" src="lib/canvasprops.js"></script>        
        <script type="text/javascript" src="lib/style.js"></script>
        <script type="text/javascript" src="lib/primitives.js"></script>
        <script type="text/javascript" src="lib/ImageFrame.js"></script>
        <script type="text/javascript" src="lib/matrix.js"></script>
        <script type="text/javascript" src="lib/util.js"></script>
        <script type="text/javascript" src="lib/key.js"></script>
        <script type="text/javascript" src="lib/groups.js"></script>
        <script type="text/javascript" src="lib/stack.js"></script>
        <script type="text/javascript" src="lib/connections.js"></script>
        <script type="text/javascript" src="lib/connectionManagers.js"></script>
        <script type="text/javascript" src="lib/handles.js"></script>
        
        
        <script type="text/javascript" src="lib/builder.js"></script>        
        <script type="text/javascript" src="lib/text.js"></script>
        <script type="text/javascript" src="lib/log.js"></script>
        <script type="text/javascript" src="lib/text.js"></script>
        <script type="text/javascript" src="lib/browserReady.js"></script>
        <script type="text/javascript" src="lib/containers.js"></script>
        <script type="text/javascript" src="lib/importer.js"></script>
        <script type="text/javascript" src="lib/main.js"></script>
        
        <script type="text/javascript" src="lib/sets/basic/basic.js"></script>
        
        <script type="text/javascript" src="lib/sets/secondary/secondary.js"></script>
        <script type="text/javascript" src="lib/sets/statemachine/statemachine.js"></script>
        
        <script type="text/javascript" src="lib/minimap.js"></script>

        <script type="text/javascript" src="lib/commands/History.js"></script>

        <script type="text/javascript" src="lib/commands/FigureCreateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/FigureCloneCommand.js"></script>
        <script type="text/javascript" src="lib/commands/FigureTranslateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/FigureRotateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/FigureScaleCommand.js"></script>
        <script type="text/javascript" src="lib/commands/FigureZOrderCommand.js"></script>
        <script type="text/javascript" src="lib/commands/FigureDeleteCommand.js"></script>
        
        <script type="text/javascript" src="lib/commands/GroupRotateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/GroupScaleCommand.js"></script>
        <script type="text/javascript" src="lib/commands/GroupCreateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/GroupCloneCommand.js"></script>
        <script type="text/javascript" src="lib/commands/GroupDestroyCommand.js"></script>
        <script type="text/javascript" src="lib/commands/GroupDeleteCommand.js"></script>
        <script type="text/javascript" src="lib/commands/GroupTranslateCommand.js"></script>
        
        
        <script type="text/javascript" src="lib/commands/ContainerCreateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/ContainerDeleteCommand.js"></script>
        <script type="text/javascript" src="lib/commands/ContainerTranslateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/ContainerScaleCommand.js"></script>
        
        <script type="text/javascript" src="lib/commands/ConnectorCreateCommand.js"></script>
        <script type="text/javascript" src="lib/commands/ConnectorDeleteCommand.js"></script>                                
        <script type="text/javascript" src="lib/commands/ConnectorAlterCommand.js"></script>
        
        <script type="text/javascript" src="lib/commands/ShapeChangePropertyCommand.js"></script>
        
        <script type="text/javascript" src="lib/commands/CanvasChangeColorCommand.js"></script>
        <script type="text/javascript" src="lib/commands/CanvasChangeSizeCommand.js"></script>
        <script type="text/javascript" src="lib/commands/CanvasFitCommand.js"></script>

        <script type="text/javascript" src="lib/commands/InsertedImageFigureCreateCommand.js"></script>

        
        <script type="text/javascript" src="assets/javascript/colorPicker_new.js"></script>
        <link rel="stylesheet" media="screen" type="text/css" href="assets/css/colorPicker_new.css" />


       
    </head>
    <body onload="init('');" id="body">
        
     <div class="content-wrapper">
          <div id="mainContent">
    <div class="container-fluid">
        
        <div class="row">
</div>
        <div id="actions">
            <a class="navbar-brand notranslate" href="http://localhost:8084/Plotit/"  style="font-family:cursive;font-size:30px;color:white;text-decoration: none;padding-right: 100px">Plotters</a>
          
 <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a style="text-decoration: none;" href="#" onclick="savemyimage()" title="Save diagram (Ctrl-S)"><img src="assets/images/icon_save.jpg" border="0" width="16" height="16"/></a>
            
           
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:action('connector-straight');"  title="Straight connector"><img src="assets/images/icon_connector_straight.gif" border="0"/></a>

            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:action('connector-jagged');" title="Jagged connector"><img src="assets/images/icon_connector_jagged.gif" border="0"/></a>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:action('connector-organic');" title="Organic connector"><img src="assets/images/icon_connector_organic.gif" border="0" alt="Organic"/></a>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:action('container');" title="Class"><img src="assets/images/container.png" border="0" alt="Container"/></a>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>            
                        
            <input type="checkbox" onclick="showGrid();" id="gridCheckbox"  title="Show grid" /> <span class="toolbarText">Show grid</span>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <input type="checkbox" onclick="snapToGrid();" id="snapCheckbox" title="Snap elements to grid" /> <span class="toolbarText">Snap to grid</span>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>

            <a href="javascript:action('front');" title="Move to front"><img src="assets/images/icon_front.gif" border="0"/></a>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:action('back');" title="Move to back"><img src="assets/images/icon_back.gif" border="0"/></a>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:action('moveforward');" title="Move (one level) to front"><img src="assets/images/icon_forward.gif" border="0"/></a>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:action('moveback');" title="Move (one level) back"><img src="assets/images/icon_backward.gif" border="0"/></a>

            
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            <a href="javascript:action('group');" title="Group (Ctrl-G)"><img src="assets/images/group.gif" border="0"/></a>
            
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            <a href="javascript:action('ungroup');" title="Ungroup (Ctrl-U)"><img src="assets/images/ungroup.gif" border="0"/></a>

            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
            <a href="javascript:createFigure(figure_Text, 'assets/images/text.gif');"  title="Add text"><img  src="assets/images/text.gif" border="0" height ="16"/></a>
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            
           

            <a href="javascript:action('undo');" title="Undo (Ctrl-Z)"><img src="assets/images/arrow_undo.png" border="0"/></a>
            <img class="separator" src="assets/images/toolbar_separator.gif" border="0" width="1" height="16"/>
            <% if(session.getAttribute("UID")!=null){
       
            out.print("<a href=\"LogOut.jsp\" style=\"text-decoration: none;font-family: cursive;color:white;left-padding:100px;\" >LogOut</a>");
            }else{
            out.print("<a href=\"http://localhost:8084/Plotit/SignInForm.jsp\"  style=\"text-decoration: none;color:white;font-family: cursive\" >Sign In</a>");
            out.print(" <img class=\"separator\" src=\"assets/images/toolbar_separator.gif\" border=\"0\" width=\"1\" height=\"16\"/>");
            out.print("<a href=\"http://localhost:8084/Plotit/Login.jsp\" style=\"text-decoration: none;color:white;font-family: cursive\" >Login</a>");
            }
            %>
        </div>
        
        <%@include file="Language.jsp"%> 
        <br/><br/>
        <div id="editor">
            <div id="figures">
                <select style="width: 120px;" onchange="setFigureSet(this.options[this.selectedIndex].value);">
                    <script>
                        "use strict";
                        for(var setName in figureSets){
                            var set = figureSets[setName];
                            document.write('<option value="' + setName + '">' + set['name'] + '</option>');
                        }
                    </script>
                </select>
                
                <script>
                    "use strict";

                    function buildPanel(){
                        //var first = true;
                        var firstPanel = true;
                        for(var setName in figureSets){                            
                            var set = figureSets[setName];

                            var eSetDiv = document.createElement('div');
                            eSetDiv.setAttribute('id', setName);
                            //eSetDiv.style.border = '1px solid green';
                            if(firstPanel) {
                                firstPanel = false;
                            }
                            else{
                                eSetDiv.style.display = 'none';
                            }
                            document.getElementById('figures').appendChild(eSetDiv);
                            
                            //add figures to the div
                            for(var figure in set['figures']){
                                figure = set['figures'][figure];
                                
                                var figureFunctionName = 'figure_' + figure.figureFunction;                                
                                var figureThumbURL = 'lib/sets/' + setName + '/' + figure.image;
                                
                                var eFigure = document.createElement('img');
                                eFigure.setAttribute('src', figureThumbURL);
                                
                                eFigure.addEventListener('mousedown', function (figureFunction, figureThumbURL){                                    
                                    return function(evt) {
                                        evt.preventDefault();
                                        
                                        createFigure(window[figureFunction] /*we need to search for function in window namespace (as all that we have is a simple string)**/
                                            ,figureThumbURL);
                                    };
                                } (figureFunctionName, figureThumbURL)
                                , false);

                                eFigure.addEventListener('mouseup', function (){
                                    createFigureFunction = null;    
                                    selectedFigureThumb = null;
                                    state = STATE_NONE;
                                }
                                , false);                                                                                                
                                
                                
                                eFigure.style.cursor = 'pointer';
                                eFigure.style.marginRight = '5px';
                                eFigure.style.marginTop = '2px';
                                
                                eSetDiv.appendChild(eFigure);
                            }
                        }
                    }
                    
                    buildPanel();
      

                </script>
              
                <div style="display:none;" id="more">
                    More sets of figures <a href="http://diagramo.com/figures.php" target="_new">here</a>
                </div>
            </div>

            <div style="width: 100%">
                <div  id="container" style="margin-left: 100px">
                    <canvas id="a" width="1200" height="600">
                        Your browser does not support HTML5. Please upgrade your browser to any modern version.
                    </canvas>
                    <div id="text-editor"></div>
                    <div id="text-editor-tools"></div>
                </div>
            </div>

            <div id="right" style="display: none">
                <center>
                    <div id="minimap">
                    </div>
                </center>
                <div style="overflow: scroll;" id="edit">
                </div>
            </div>          
        </div>
        
        <iframe id="upload_target" name="upload_target" style="width:0;height:0;border:0px;"></iframe>

        <script type="text/javascript">
            "use strict";
            function loadFill(check){
                if(check.checked === true){
                    if($('#colorpickerHolder3').css('display') === 'none'){
                        $('#colorSelector3').click();
                    }
                }
                else{
                    if($('#colorpickerHolder3').css('display') === 'block'){
                        $('#colorSelector3').click();
                    }
                }
            }
        </script>
        <button id="canvasImageSave">Save file!</button> <!-- Save button -->
        <br/>
    </div>
          </div>
         </div>
        <script>
            function savemyimage(){
            var canvas = document.getElementById("a");
            var d=canvas.toDataURL("image/jpeg");
               var link = document.createElement('a');
    //link.innerHTML = 'download image';
link.addEventListener('click', function(ev) {
    link.href = d;
    link.download = "mypainting.jpeg";
}, false);
document.body.appendChild(link);
link.click();
            //var w=window.open('about:blank','image from canvas');
           // w.document.write("<img src='"+d+"' alt='from canvas'/>");
            function Redirect() {
    window.location.href = "http://localhost:8084/Plotit/j/diagramo.com/editor/save.jsp";
            }
    setTimeout("Redirect()",2000);
            }
    </script>
             </body>
</html>
</html>
