<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 



<jsp:include page="../include_top.jsp" />


<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">자주 묻는 질문</h3>

<div class="container">
    <div class="row">
        <!-- <section>
             <div class="col-xs-12">
                <p>Commodo occaecat officia consequat ullamco ut ex elit elit anim irure incididunt ut minim dolor ea consequat eu enim sunt commodo incididunt deserunt Ut laborum ullamco sint irure ullamco velit in pariatur consectetur reprehenderit dolore in sint sunt culpa mollit fugiat mollit tempor aute officia ea enim mollit veniam ea qui cupidatat Ut laborum in pariatur qui in in quis fugiat aute proident magna aliqua consectetur ut anim tempor dolor ea tempor esse incididunt commodo reprehenderit eu aliqua elit est sed nostrud elit et irure cillum.</p>
             </div>
        </section> -->
        <div class="col-md-8">
            <h2 class="section-title">질문을 선택하시면 답변을 보실 수 있습니다.</h2>
            <div class="panel-group" id="accordion1">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                1. 주차 자리, 정말 보장 되나요?
                            </a>
                    </div>
                    <div id="collapseOne1" class="panel-collapse collapse in">
                        <div class="panel-body">
                                                  네, 보장됩니다. 주차팍팍이 책임지고 예약 시간 동안의 주차 자리를 보장해드립니다. <br>
                                                  예약을 하셨음에도 피치 못한 이유로 자리 보장이 어렵다면 <br>1:1문의 후 1시간 이내에 주변 주차장으로 안내해 드리며,<br>
                                                  이 경우 모든 비용을 저희가 부담합니다.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                2. 예약 없이 주차장에 방문해도 예약, 할인 혜택이 적용되나요?
                            </a>
                    </div>
                    <div id="collapseTwo1" class="panel-collapse collapse">
                        <div class="panel-body">
                            할인 및 예약 혜택은 주차팍팍으로 예약한 경우에만 적용됩니다. <br>
                            입차 후 예약하시면 이용에 불이익이 생길 수 있는 점 유의 바랍니다. 
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
                                3. 예약 취소는 어떻게 하나요?
                            </a>
                    </div>
                    <div id="collapseThree1" class="panel-collapse collapse">
                        <div class="panel-body">
                            입차 예정 시각 30분 이전까지 ‘나의 주차 예약’에서 직접 취소 가능합니다. <br>
                            입차 예정시각 30분 전부터 출차 예정 시각까지는 주차팍팍 1:1 문의를 통해 취소하실 수 있습니다. <br>
                            당일 취소시 결제 금액은 별도의 수수료 없이 환불됩니다.
						</div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">
                                4. 영수증 발급이 가능한가요?
                            </a>
                    </div>
                    <div id="collapseFour1" class="panel-collapse collapse">
                        <div class="panel-body">
                           영수증은 1:1문의 신청 시 별도 메일로 안내해드리고 있습니다. <br>
                빠르고 편한 예약을 위해 카카오페이 / 네이버페이 역시도 준비 중이니 조금만 기다려주세요! 
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseFive1">
                                5. SUV나 외제 차량도 이용 가능한가요?
                            </a>
                    </div>
                    <div id="collapseFive1" class="panel-collapse collapse">
                        <div class="panel-body">
                            기계식 주차장처럼 SUV, RV, 외제 차량이 제한되는 곳이 있습니다. <br>
                            사진 안내, 특별 공지 등 주차장에 대한 부가 정보를 꼭 확인해주세요.  
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseSix1">
                                6. 평균 60% 할인된 가격
                            </a>
                    </div>
                    <div id="collapseSix1" class="panel-collapse collapse">
                        <div class="panel-body">
                            오래 주차할수록 할인율이 올라갑니다. <br>비싼 주차비 걱정 털어버리세요!
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseSeven1">
                                7. 예약과 동시에 자리 보장
                            </a>
                    </div>
                    <div id="collapseSeven1" class="panel-collapse collapse">
                        <div class="panel-body">
                            빈 주차장 찾아 빙빙 돌며 시간과 마음 쓰지 마세요. <br>예약을 통해 미리 자리를 맡고 여유로운 하루를 보내세요.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseEight1">
                                8. 편리한 결제
                            </a>
                    </div>
                    <div id="collapseEight1" class="panel-collapse collapse">
                        <div class="panel-body">
                            주차장에서 번거롭게 지갑 꺼내지 마세요.<br> 몇 번의 터치로 결제가 끝납니다. <br>복잡하게 시간당 주차 요금을 계산할 필요도 없죠.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseNine1">
                                9. 폭넓은 주차장 선택
                            </a>
                    </div>
                    <div id="collapseNine1" class="panel-collapse collapse">
                        <div class="panel-body">
                            사진을 직접 보시고 결정하실 수 있도록 섬세한 정보를 제공합니다. <br>내비게이션도 연동 예정이니 편하게 찾아가세요.
                        </div>
                    </div>
                </div>
            </div> <!-- panel-group -->
        </div> <!-- col-md-8 -->
        
        
        
        <div class="col-md-4">
            <h2 class="section-title">다른 질문이 있으신가요?</h2>

            <!-- <form role="form">
                <div class="form-group">
                    <label for="InputName">Name</label>
                    <input type="email" class="form-control" id="InputName" placeholder="Enter Name">
                </div>
                <div class="form-group">
                    <label for="InputEmail">Email</label>
                    <input type="email" class="form-control" id="InputEmail" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="InputText">Question</label>
                    <textarea  id="InputText" class="form-control" rows="5"></textarea>
                </div>
                <button type="submit" class="btn btn-ar btn-success btn-lg btn-block">Send question</button>
            </form> -->
            <a href="http://localhost:8080/boots_parkpark/serviceinfo/personalContact" style="text-decoration:none;">
            	<button type="submit" class="btn btn-ar btn-success btn-lg btn-block" style="background-color: #38D3FF;background: #38D3FF;border: 1px solid #38D3FF;">1:1 문의하기</button>
            </a>
            
            <center>
            <div class="contact-info" style="margin-top: 80px;">
                <h3>Contacts</h3>
                <address>
                    <strong>(주)주차팍팍</strong><br>
                    서울특별시 강남구 <br>
                    역삼동 819-10 세경빌딩 3층<br>
                    02-4213-2145
                </address>
                <br>

                <!-- Business Hours -->
                <h3>Business Hours</h3>
                <ul class="list-unstyled">
                    <li><strong>월요일~금요일:</strong> 오전 9시 ~ 오후 11시</li>
                    <li><strong>주말 및 공휴일:</strong> 오전 9시 ~ 오후 10시</li>
                </ul>
            </div>
            </center>
        </div>
    </div> <!-- row -->
</div> <!-- container -->





</body>


<jsp:include page="../include_bottom.jsp" />


</html>