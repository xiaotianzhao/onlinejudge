package com.onlinejudge.action;

import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.http.client.fluent.Request;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Component;

import com.onlinejudge.annotation.AccessToUrl;
import com.onlinejudge.constant.Status;
import com.onlinejudge.domain.database.User;
import com.onlinejudge.dto.UpdateUserFormBean;
import com.onlinejudge.enums.IsLogin;
import com.onlinejudge.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author ��Ц��
 *
 * @time 2015��10��2��
 * 
 */
@Component
public class UpdateUserInfoAction implements ModelDriven,SessionAware,RequestAware{
	private UpdateUserFormBean uufb;
	private UserService userService;
	private Map<String,Object> session;
	private Map<String,Object> request;
	private String result;

	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public UpdateUserFormBean getUufb() {
		return uufb;
	}
	@Resource(name="updateUserFormBean")
	public void setUufb(UpdateUserFormBean uufb) {
		this.uufb = uufb;
	}

	public UserService getUserService() {
		return userService;
	}
	
	@Resource(name="userServiceImpl")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@Override
	public Object getModel() {
		return uufb;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	@AccessToUrl(IsLogin.YES)
	public String updateUserInfo(){
		String email = (String) session.get("email");
		JSONObject json = new JSONObject();
		try{
			
			if (uufb.validatePhonenum() 
						&& uufb.validateQQ() && uufb.validateRealName()
						&& uufb.validateUserName()){
					boolean status = userService.updateUser(uufb,email);
					if (status){
						json.put("status", true);
						json.put("message", "���³ɹ�");
						result = json.toString();
						return Status.SUCCESS;
					}else{
						json.put("status", false);
						json.put("message", "д�����ݿ�ʧ�ܣ�");
						result = json.toString();
						return Status.FAIL;
					}
			}else{
				json.put("status", false);
				json.put("message", "�����Ƿ���");
				result = json.toString();
				return Status.PARAMSILLEGAL;
			}
		}catch(Exception e){
			e.printStackTrace();
			json.put("status", false);
			json.put("message", "�����쳣д��ʧ�ܣ�");
			result = json.toString();
			return Status.FAIL;
		}
	}
	
	@AccessToUrl(IsLogin.YES)
	public String updateUserInfoPage(){
		User user = userService.getUserByEmail((String) session.get("email"));
		request.put("user", user);
		return Status.SUCCESS;
	}

}