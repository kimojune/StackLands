#pragma once
#include "YaEngine.h"

namespace ya
{
	class Application
	{
	public:
		Application();
		~Application();

		void Initialize(HWND hWnd);
		void Run();
		void Update();
		void Render();

		HWND GetHwnd() { return mHwnd; }
		HDC GetHdc() { return mHdc; }
		//void Release();
	private:
		HWND mHwnd;
		HDC mHdc;

		//¹é ¹öÆÛ doble buffering
		HBITMAP mBackBuffer;
		HDC mBackHDC;

		UINT mWidth;
		UINT mHeight;
	
		Vector2 mPos;
		

		//Scene mSene[256];
	};
}

