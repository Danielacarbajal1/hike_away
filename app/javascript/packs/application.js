import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

var modalConfirm = function(callback){

  $("#btn-confirm").on("click", function(){
    $("#myModal").modal('show');
  });

  $("#modal-btn-fav").on("click", function(){
    callback(true);
    $("#myModal").modal('hide');
  });

  $("#modal-btn-no").on("click", function(){
    callback(false);
    $("#myModal").modal('hide');
  });
};

modalConfirm(function(confirm){
  if(confirm){
    $("#result").html("This trip has been added to your favorites");
  }else{
    $("#result").html("Cancelled");
  }
});

