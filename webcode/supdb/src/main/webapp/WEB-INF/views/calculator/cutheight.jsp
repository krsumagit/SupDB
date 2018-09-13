<%-- 
    Document   : cutheight
    Created on : Aug 30, 2018, 5:09:36 PM
    Author     : a0282565
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>


<div class="container-fluid"   style="padding-left: 50px; padding-right: 50px;">

    <div class=" text-center col-md-12"   >
        <h5>Pre bond Applications</h5>
        <h1>Cut Height Calculator</h1>
    </div>
    <div class="row" >
        <div  class="my-3 p-3 bg-light rounded shadow-sm col-sm-2" >   
            <form id="data1" class="needs-validation" novalidate>
                <div> 
                    <h4>Enter die and dicing tape information</h4>
                </div> 
                <div class="form-group"  >

                    <label class="form-label" id="die_thick">Die thickness (um)</label>

                    <input  class="form-control" type="number" id="die_thick1"  name = "waf" placeholder="Input wafer or die thickness in um"  value = "">  
                </div>
                <div class="form-group ">
                    <label class="form-label" id="tapex">Tape thickness (um)</label>

                    <input class="form-control"  type="number" id="tapex1" name = "diex" placeholder="Input tape thickness in um"  value = "">  
                </div> 
                <div class="form-group  ">
                    <label class="form-label"  id="cutdt">Cut thru dicing tape (um)</label>
                    <input class="form-control" type="number" id="cutdt1" name = "diex" placeholder="Input cut thru dicing tape in um (25um default)" value = ""> 

                </div>
                <div class="form-group ">
                    <label class="form-label" id="zone">Z1 Cut Height %</label> 
                    <input  class="form-control" id="zone1" type="number" placeholder="Input desired Z1 Cut Height %"   value = "">

                </div> 


            </form>
            <button id="compute" class="btn btn-primary" onclick="myFunction()">Compute</button>
            <button class="btn btn-secondary" onclick="Clear()">Clear</button>

        </div>  

        <div class="my-3 p-3 bg-light rounded shadow-sm col-sm-2">
            <div>
                <h4>RESULTS</h4> 
            </div>
            <form id="output1">
                <div class="form-group">
                    <label class="form-label" id="zout">Z1 Cut Height (um / mil) </label>
                   <strong> <label class="form-label"  id="zout1" type="number" ></label>
                    <label class="form-label"  >/</label>
                    <label class="form-label"  id="mil1" type="number"  ></label>
                     </strong>
                </div>
                <div class="form-group">
                    <label  class="form-label" id="zout2">Z2 Cut Height (um / mil)</label>
                <strong>    <label class="form-label" id="zout21" type="number"></label>
                    <label class="form-label" >/</label>
                    <label class="form-label"  id="mil2" type="number" ></label>
                </strong>
                </div>




            </form>
        </div>	

        <div class="my-3 p-3 bg-white rounded shadow-sm col-sm-8">
            <div>
                <h4>Related Peripheral</h4> 
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


    <script type="text/javascript">
        function myFunction() {
            var v = document.getElementById("die_thick1").value;
            var w = document.getElementById("tapex1").value;
            var x = document.getElementById("cutdt1").value;
            var y = document.getElementById("zone1").value;

            if ((isEmpty(v)) || (isEmpty(w)) || (isEmpty(x)) || (isEmpty(y))) {
                alert("Kindly fill up the parameters.");
            } else {

                var y1 = +y / 100;
                var vresult = +v * +y1;
                var vxesult = +v - +vresult;
                var rone = +w + +vxesult;
                var rtwo = +w - +x;
                var mone = Math.round(+rone / 25.4);
                var mtwo = Math.round(+rtwo / 25.4);

                document.getElementById("zout1").innerHTML = rone;
                document.getElementById("mil1").innerHTML = mone;
                document.getElementById("zout21").innerHTML = rtwo;
                document.getElementById("mil2").innerHTML = mtwo;
            }





        }

        function Clear() {
            document.getElementById("data1").reset();
            document.getElementById("zout1").innerHTML = "";
            document.getElementById("mil1").innerHTML = "";
            document.getElementById("zout21").innerHTML = "";
            document.getElementById("mil2").innerHTML = "";

        }

        function isEmpty(value) {
            if (!value) {
                return true;
            }
            return false;
        }

    </script>
</div>
