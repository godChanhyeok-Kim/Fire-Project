<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="ko">

   <head>

       <meta charset="UTF-8">

       <meta name="viewport" content="width=device-width, initial-scale=1.0">

       <title>Document</title>

       <style>

			html, body {

				height: 100%;

				margin: 0;

				background: #fcfceb;

				overflow:auto;

			}

 

       </style>

   </head>

   <body>

 

 

			<b style="color: brown">Map Width Size:</b> 

			<input type="text" id="wSize" value="" style="width: 50px; height: 25px; font-size: 15px">

			<b style="color: brown">Map Height Size:</b> 

			<input type="text" id="hSize" value="" style="width: 50px; height: 25px; font-size: 15px">

			<input type="button" id="mapSize" value="set & reset" style="width: 120px; height: 30px; font-size: 20px; color: skyblue; border-radius: 10px 0 10px 0; border: 1px solid skyblue; background-color: white">

			<br>

	      	

	      	<div id="btn_menu">

				<input type="button" id="frame" value="Tile" style="width: 80px; height: 40px; font-size: 20px; color: white; border-radius: 10px 10px 10px 10px; border: 1px solid grey; background-color: rgb(64,224,208)">

				<input type="button" id="wall" value="Wall" style="width: 80px; height: 40px; font-size: 20px; color: black; border-radius: 10px 10px 10px 10px; border: 1px solid grey; background-color: rgb(64,224,208)">

				<input type="button" id="fire" value="Fire" style="width: 80px; height: 40px; font-size: 20px; color: red; border-radius: 10px 10px 10px 10px; border: 1px solid grey; background-color: rgb(64,224,208)">

				<input type="button" id="user" value="User" style="width: 80px; height: 40px; font-size: 20px; color: yellow; border-radius: 10px 10px 10px 10px; border: 1px solid grey; background-color: rgb(64,224,208)">

				<input type="button" id="exit" value="Exit" style="width: 80px; height: 40px; font-size: 20px; color: orange; border-radius: 10px 10px 10px 10px; border: 1px solid grey; background-color: rgb(64,224,208)">

				<input type="button" id="door" value="Door" style="width: 80px; height: 40px; font-size: 20px; color: rgb(0,128,255); border-radius: 10px 10px 10px 10px; border: 1px solid grey; background-color: rgb(64,224,208)">

	        	<input type="button" id="beacon" value="Beacon" style="width: 80px; height: 40px; font-size: 18px; color: pink; border-radius: 10px 10px 10px 10px; border: 1px solid grey; background-color: rgb(64,224,208)">

	        </div>

	        

	        

			<div class="content" id="console">

				<script>

					var colorNum;

					var strArr;

					var flag = true;

					

					document.getElementById('frame').addEventListener('click', function(){

						colorNum = 0;

					});

		              

					document.getElementById('wall').addEventListener('click', function(){

						colorNum = 1;

					});

					

					document.getElementById('fire').addEventListener('click', function(){

						colorNum = 2;

					});

		              

					document.getElementById('user').addEventListener('click', function(){

						colorNum = 3;

					});

		              

					document.getElementById('exit').addEventListener('click', function(){

						colorNum = 4;

					});

		              

					document.getElementById('door').addEventListener('click', function(){

						colorNum = 5;

					});    

		         	

					document.getElementById('beacon').addEventListener('click', function(){

						colorNum = 6;

					});

					

					// Ŭ���� ����

					function Map(width, height) {

						this.width = width;

						this.height = height;

						this.mapArr = new Array();

					}

	

 

					

					// Table�� id �����

					Map.prototype.createMap = function() { 

	            

						var str = ""; // String��

						str += "<table id='map' name='map' border=1>"; // 1. table�� ����

						for (var y = 0; y < this.height; y++) { //4. ���� tr�� ������ŭ for���� �ۼ��Ѵ�

							str += "<tr>"; // 2. tr�� ����

							this.mapArr[y] = new Array();

							for (var x = 0; x < this.width; x++) { //3. ���� td�� ������ŭ for���� �ۼ��Ѵ�

								str += "<td width=40 height=40 id=y" + y + "x" + x + "></td>"; // ���̺� id �����

								this.mapArr[y][x] = 0;

							}

							str += "</tr>"; //5. tr�� �ݴ´�

						}

						str += "</table>"; // 6.table�� �ݴ´�

						return str;

					}

					

					// �迭�� ���� ��ȣ�� ���� �� ������

					Map.prototype.insertColor = function(){

						for (var y = 0; y < this.height; y++) {

							for (var x = 0; x < this.width; x++) {

								if(this.mapArr[y][x] == 0) {

									this.changeColor("y" + y + "x" + x, "white"); //frame, pixel

								} else if (this.mapArr[y][x] == 1) {

									this.changeColor("y" + y + "x" + x, "black"); //wall

								} else if (this.mapArr[y][x] == 2) {

									this.changeColor("y" + y + "x" + x, "red"); //fire

								} else if (this.mapArr[y][x] == 3) {

									this.changeColor("y" + y + "x" + x, "yellow"); //user

								} else if (this.mapArr[y][x] == 4) {

									this.changeColor("y" + y + "x" + x, "orange"); //exit

								} else if (this.mapArr[y][x] == 5) {

									this.changeColor("y" + y + "x" + x, "rgb(0,128,255)"); //door

								} else {

									this.changeColor("y" + y + "x" + x, "pink"); //door

								} 

							}

						}

					}

		      

					// Table�� ���� ����

					Map.prototype.changeColor = function(id, color){

						document.getElementById(id).style.backgroundColor = color;

					}

		            

		            

					// ���̺� ����ϱ�

					window.onload = function mapPrint() {

						var wSize = 0, hSize = 0;

						var mapValue;

						document.getElementById('mapSize').addEventListener('click', function(){

		              

							if(!isNaN(document.getElementById('wSize').value) == true && !isNaN(document.getElementById('hSize').value) == true){

								wSize = document.getElementById('wSize').value;

								hSize = document.getElementById('hSize').value;

		                               

								mapValue = new Map(wSize, hSize);

								document.getElementById("console").innerHTML = mapValue.createMap();

								mapValue.insertColor();

	

								

							} else{

								alert('retry plz');  

							}

							// �迭�� �����ȣ �ٲٱ�

							

										

							

							document.getElementById('map').addEventListener('click', function(e){

								if(flag == true){ 

									flag = false; 				

								} else { 

									flag = true; 				

								}

								document.getElementById('map').addEventListener('mousemove', function(e){

									if(flag == true){

	

										var numY = e.target.id.indexOf("y"); //��ǥ id���� y�� ��ġ�� �� ��°���� �̾Ƴ��� ��

										var numX = e.target.id.indexOf("x"); //��ǥ id���� x�� ��ġ�� �� ��°���� �̾Ƴ��� ��

			

										var y = parseInt(e.target.id.substring(numY+1, numX));

										//id = ynxn, y�� ���� �����ϱ� ���� y+1��°���� x��° ������ ���ڿ� ����

										var x = parseInt(e.target.id.substring(numX+1, e.target.id.length));

										//id = ynxn, x�� ���� �����ϱ� ���� x+1��°���� ������ ���ڿ� ����

										

										console.log('y =', y, ', x =', x);

										

										mapValue.mapArr[y][x] = colorNum;

										mapValue.insertColor();

										//alert(mapValue.mapArr[y][x]);

 

									

										// ������ �ѱ� �迭

										strArr = mapValue.mapArr.join("\n");

										//console.log(strArr);

									

										//document.getElementsByName('strArr').value = strArr;

									}

 

								});

								  

							});

						});

					}

					

					

 

				</script>

			</div>  

		<form action="http://192.168.0.103:8080/TestServer/EmergencyTest/MapTestData" method="get" name="form1">	

			<input type="hidden" id="strArr" name="strArr" value="">			

			<input type="submit" id="save" value="save" name="save" style="width: 80px; height: 30px; font-size: 20px; color: skyblue; border-radius: 10px 0 10px 0; border: 1px solid skyblue; background-color: white">

			<input type="submit" id="load" value="load" name="load" style="width: 80px; height: 30px; font-size: 20px; color: skyblue; border-radius: 10px 0 10px 0; border: 1px solid skyblue; background-color: white">

 

		</form>

		

		<script type="text/javascript">

			document.getElementById('save').addEventListener('mousedown', function(evt){

				document.getElementById('strArr').value = strArr;

				//console.log(document.getElementById('strArr').value);

				evt.preventDefault();

			});  

		</script>

	</body>

</html>