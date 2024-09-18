package com.olamagri.utils;
import com.olamagri.objectrepo.*;
import com.olamagri.pages.MainPage;
import com.olamagri.utils.CommonActions;

public class BaseStepInstance {

	// ---------------------Object Repository-------------------------

	protected MainRepo getMainRepoInstance() {
		return MainRepo.getInstance();
	}
	
//	protected HomeRepo getHomeRepoInstance() {
//		return HomeRepo.getInstance();
//	}
//	
//	protected CartRepo getCartRepoInstance() {
//		return CartRepo.getInstance();
//	}
//		protected PLPRepo getPLPRepoInstance() {
//			return PLPRepo.getInstance();
//		}
//		
//		protected PDPRepo getPDPRepoInstance() {
//			return PDPRepo.getInstance();
//		}
//		
//		protected MyAccountRepo getMyAccountRepoInstance() {
//			return MyAccountRepo.getInstance();
//		}
//		
//		protected FooterRepo getFooterRepoInstance() {
//			return FooterRepo.getInstance();
//		}
	
	// ---------------------PageFunctions-------------------------

		protected MainPage getMainPageInstance() {
			return MainPage.getInstance();
		}
		
//		protected HomePage getHomePageInstance() {
//			return HomePage.getInstance();
//		}
//		
//		protected CartPage getCartPageInstance() {
//			return CartPage.getInstance();
//		}
//		protected PLPPage getPLPPageInstance() {
//			return PLPPage.getInstance();
//		}
//		
//		protected PDPage getPDPageInstance() {
//			return PDPage.getInstance();
//		}
//		
//		protected MyAccountPage getMyAccountPageInstance() {
//			return MyAccountPage.getInstance();
//		}
//		
//		protected FooterPage getFooterPageInstance() {
//			return FooterPage.getInstance();
//		}
//		
		// ----------------------CommonClasses-----------------------

		protected CommonActions getCommonActionsInstance() {
			return CommonActions.getInstance();

		}
		
	}