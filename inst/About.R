
function(){
  tabPanel(h1(id = "panel_about", "About"),
           HTML(paste0(
             '
      <div style="display:inline;float:right;margin:0px 0px 5px 20px">
      </div>
		  <span style="color:#64645F;font-weight: bold;">General description</span>
		  <br>
		  <br>
      <div style="max-width:800px; word-wrap:break-word;">
        <p style="font-size:100%;text-align:justify">
          The PollinatorR Shiny application allows citizens to test and improve
          their polliantor identification skills based on their images.
          <br>
          <br>
          In the Species tab, you can practice identifying pollinators seen
          in the Calgary area by choosing from the list and scrolling through
          the images.
          <br>
          <br>
          In the Quiz tab you can practice your pollinator identification 
          skills. The app will show you random species and you are asked to 
          provide the pollinator name (case insensitive). You may browse 
          through a selection of pictures. The quiz keeps track of the species 
          shown and answered correctly and uses this information to show species 
          that have been answered correctly less 
          frequently and species which have not been answered correctly more 
          frequently. 
          <br>',
             ifelse(setup, '<br>
          In the Setup tab you can choose which species to practice, either by 
          choosing from a predefined set of species lists or by uploading a 
          customized species list.', 
                    ''),
             ifelse(setup & gbif, ' You can subset the species list by those 
             species found in <a target="_blank" href= "https://www.gbif.org/">
                    GBIF</a> for a defined radius around a desired location.', 
                    ''),
             ifelse(setup, ' You can also define which hints and images to make 
          available in the Species overview and Quiz tabs based on all the 
          resources available in this instance of BotanizeR and hints you added 
          to the species list. 
          <br>', ''),
             '<br>
      </p>



      </div>   
      <hr width="800", align="left" style="height:0.5px;border:none;
      color:#A0A5A8;background-color:#A0A5A8;" />
      <br>
      <span style="color:#64645F;font-weight:bold;">Sources</span>
		  <div style="max-width:1000px; word-wrap:break-word;">
		     <p style="text-align:justify;">',
         instance_credits,
		     '</p>
		  </div>  

  
      <br>
		  <span style="color:#64645F;font-weight: bold;">Citation</span>
		  <div style="max-width:1000px; word-wrap:break-word;">
		     <p style="text-align:justify">
		     Weigelt, P., Denelle, P., Brambach, F. & Kreft, H. (2021) A flexible 
         R package with Shiny app to practice plant identification for 
         online teaching and beyond. <i>PLANTS, PEOPLE, PLANET</i>, 
         <a href="https://doi.org/10.1002/ppp3.10226" target=_blank>
         https://doi.org/10.1002/ppp3.10226</a>.
		     </p>
		  </div>  
		  <br>
		  <span style="color:#64645F;font-weight:bold;">License</span>
		  <div style="max-width:1000px; word-wrap:break-word;">
		     <p style="text-align:justify;">
		        Coded under License GPLv3
		     </p>
		  </div> 
		')),
           value = "about"
  )
}
