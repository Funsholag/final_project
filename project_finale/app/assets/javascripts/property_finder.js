// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// var url = "http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=X1-ZWz196vu6dr7rf_3v2ae&address=2628 Broadway New York, NY 10025&citystatezip=10025"
// var property;
// document.addEventListener("DOMContentLoaded", function () {
//   var api ="http://www.zillow.com/webservice/GetSearchResults.htm?"
//   var address="&address=2628 Broadway New York, NY 10025";
//   var zipcode ="&citystatezip=10025";
//   var api_key= "";
//   var input;
// // var url = api + api_key + address + zipcode;
//
//   function setup(){
//     var button = select("#submit");
//     button.mousePressed(locationAsk);
//
//     input = select("#address");
//     input= select("#citystatezip");
//   }
//   function locationAsk(){
//     var url = api + api_key + input.value() + address + zipcode;
//     loadJSON(url, gotData);
//   }
//
//   $(function(){
//     setup();
//   })
// })
// function gotData(data){
//   property = data;
//
// }
// $('#search_results').html("<%= escape_javascript (render(partial: 'search_results')) %>");
