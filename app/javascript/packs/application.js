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

var modalConfirm = function(callback){

  $("#btn-confirmdir").on("click", function(){
    $("#myDirections").modal('show');
  });

  $("#modal-btn-directions").on("click", function(){
    callback(true);
    $("#myDirections").modal('hide');
  });

  $("#modal-btn-directions-close").on("click", function(){
    callback(false);
    $("#myDirections").modal('hide');
  });
};
modalConfirm(function(confirmdir){
  if(confirmdir){
    $("#result2");
  }else{
    $("#result2");
  }
});
