//
//  responseMessageDictionary.m
//  linphone
//
//  Created by Tuan Viet Do on 5/13/13.
//
//

#import "responseMessageDictionary.h"

@implementation responseMessageDictionary

//define error
#define  e1  @"The IMS Account doest not exit or It has not been activated by SMS. Please check it and try again"
#define  e2  @"You are using an invalid SIM for this IMS account"
#define  e3  @"Your SIM have been already activated'.'<br />'.'Please use the rresponsedMessageistered SIM! Thanks"
#define  e4  @"[Your location is not supported. Please check your rresponsedMessageistered location!]"
#define  e5  @"Your account has been not activated yet. Please send sms to rresponsedMessageister. Thanks"
#define  e6  @"The IMSI is not valid. Please check your SIM card"
#define  e7  @"The MSISDN doest not exit. Please check it and try again"
#define  e8  @"Query Account failed:"
#define  e9  @"activation code is wrong"
#define  e10  @"The IMS Account does not exist. Please check it and try again"
#define  e11  @"The IMS Account has not been activated by SMS. Please check it and try again"
#define  e12  @"IMEI for account is failed.'.'<br />'.'Please use the registered SIM! Thanks"
#define  e13  @"Query failed_deactivate_check_msisdn";
#define  etest  @"ABC"

//define displayed message
#define  re1  @"Tài khoản này không tồn tại hoặc chưa được kích hoạt qua SMS. Xin quý khách vui lòng kiểm tra lại."
#define  re2  @"Quý khách đang sử dụng sim chưa được đăng kí. Xin quý khách vui lòng kiểm tra lại."
#define  re3  @"Sim này đã được kích hoạt ở máy khác. Xin quý khách vui lòng kiểm tra lại."
#define  re4  @"Quý khách đang ở ngoài vùng dịch vụ, xin vui lòng kiểm tra lại."
#define  re5  @"Tài khoản của quý khách chưa được kích hoạt. Xin quý khách vui kích hoạt trước khi sử dụng."
#define  re6  @"Sim của quý khách không hợp lệ. Xin quý khách vui lòng kiểm tra lại."
#define  re7  @"Số điện thoại quý khách nhập chưa đúng hoặc được đăng kí. Xin quý khách vui lòng kiểm tra lại."
#define  re8  @"Số điện thoại vừa nhập chưa được đăng kí. Xin quý khách vui lòng kiểm tra lại hoặc liên hệ với trung tâm chăm sóc khách hàng."
#define  re9  @"Mã kích hoạt bị sai.Xin quý khách vui lòng kiểm tra lại."
#define  re10  @"Tài khoản này không tồn tại. XIn quý khách vui lòng kiểm tra lại."
#define  re11  @"Tài khoản này chưa được kích hoạt bằng tin nhắn. Xin quý khách vui lòng kiểm tra lại."
#define  re12  @"Sim đang sử dụng đã được kích hoạt cho máy khác. Xin quý khách vui lòng kiểm tra lại."
#define  re13  @"Thuê bao không tồn tại."
#define  retest  @"ABC 123456789"

-(NSString*)translateToUserLanguage:(NSString*)responsedMessage{
    //[SmartTalk2.0-Others] translate message from authenticated server to displayed content for AlertView.
    
    if ([[responsedMessage componentsSeparatedByString:e1] count]>1) {
        return re1;
    }
    else if([[responsedMessage componentsSeparatedByString:e2] count]>1) {
        return re2;
    }
    else if([[responsedMessage componentsSeparatedByString:e3] count]>1) {
        return re3;
    }
    else if([[responsedMessage componentsSeparatedByString:e4] count]>1) {
        return re4;
    }
    else if([[responsedMessage componentsSeparatedByString:e5] count]>1) {
        return re5;
    }
    else if([[responsedMessage componentsSeparatedByString:e6] count]>1) {
        return re6;
    }
    else if([[responsedMessage componentsSeparatedByString:e7] count]>1) {
        return re7;
    }
    else if([[responsedMessage componentsSeparatedByString:e8] count]>1) {
        return re8;
    }
    else if([[responsedMessage componentsSeparatedByString:e9] count]>1) {
        return re9;
    }
    else if([[responsedMessage componentsSeparatedByString:e10] count]>1) {
        return re10;
    }
    else if([[responsedMessage componentsSeparatedByString:e11] count]>1) {
        return re11;
    }
    else if([[responsedMessage componentsSeparatedByString:e12] count]>1) {
        return re12;
    }
    else if([[responsedMessage componentsSeparatedByString:e12] count]>1) {
        return re13;
    }
    else
        return responsedMessage;
}
@end