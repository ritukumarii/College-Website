<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="facilities">
	<div class="container">
		<h3 class="tittle">FACILITIES</h3> 	
			<script src="js/jquery.swipebox.min.js"></script> 
			<script type="text/javascript">
			    jQuery(function ($) {
			        $(".swipebox").swipebox();
			    });
			</script>
				<div class="view view-seventh">
                    <a href="images/g1.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g1.jpg" alt="" >
                    <div class="mask">
                        <h4>Hostel</h4>
                        <p>Hostel facility available for boys, along with hygienic fooding.The Mess of the Hostel is run entirely on a non-profit basis under the supervision of the Superintendent.</p>
                        
                    </div></a>
                </div>
                <div class="view view-seventh">
                    <a href="images/g2.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g2.jpg" alt="" >
                    <div class="mask">
                         <h4>Parking</h4>
                        <p>The bicycles and two wheelers are to be parked in the allotted parking places only. Students are directed to make vehicles pass.</p>
                        
                    </div></a>
                </div>
                <div class="view view-seventh">
                    <a href="images/g3.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g3.jpg" alt="">
                    <div class="mask">
                         <h4>Computer Lab</h4>
                        <p>The Computer labs are provided for the proper skill and technology development </p>
                        
                    </div></a>
                </div>
                <div class="view view-seventh">
                    <a href="images/g4.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g4.jpg" alt="">
                    <div class="mask">
                        <h4>Library</h4>
                        <p>The library is the temple of learning, and learning has liberated more people than all the wars in history. ...</p>
                        
                    </div></a>
                </div>
				<div class="view view-seventh">
                    <a href="images/g6.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g6.jpg" alt="">
                    <div class="mask">
                        <h4>succespath</h4>
                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                        
                    </div></a>
                </div>
				<div class="view view-seventh">
                    <a href="images/g5.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g5.jpg" alt=""/>
                    <div class="mask">
                        <h4>Canteen</h4>
                        <p>The place in college where adults can becomes TEEN.</p>
                        
                    </div></a>
                </div>
				<div class="clearfix"></div>
	</div>
</div>

    </form>
</asp:Content>

