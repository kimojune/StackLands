#include "yaApplication.h"
#include "yaSceneManager.h"
#include "yaTime.h"
#include "yaInput.h"


namespace ya
{
	ya::Application::Application()
		:mHwnd(NULL)
		,mHdc(NULL)
	{
	}

	ya::Application::~Application()
	{
		//SceneManager::Release();
		//Time::Release();
	}

	void ya::Application::Initialize(HWND hWnd)
	{
		mHwnd = hWnd;
		mHdc = GetDC(hWnd);
		mWidth = 1500;
		mHeight = 800;

		//
		RECT rect = { 0,0,mWidth,mHeight };
		AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, false);

	
		
		//������ ũ�� ����� ��� ����

		SetWindowPos(mHwnd, nullptr, 0, 0
			,/*rect.left, rect.top,*/ rect.right-rect.left
			, rect.bottom- rect.top
			, 0);
		ShowWindow(hWnd, true);

		mBackBuffer = CreateCompatibleBitmap(mHdc, mWidth, mHeight);
		mBackHDC = CreateCompatibleDC(mHdc);

		HBITMAP defaultBitmap
			= (HBITMAP)SelectObject(mBackHDC, mBackBuffer);
		DeleteObject(defaultBitmap);


		Time::Initialize();
		Input::Initialize();
		SceneManager::Initialize();
	}

	void ya::Application::Run()
	{
		Update();
		Render();
	}

	void ya::Application::Update()
	{
		Time::Update();
		Input::Update();
		SceneManager::Update();
	}

	void ya::Application::Render()
	{
		//clear
		Rectangle(mBackHDC, -1, -1, 1502, 802);
		Time::Render(mBackHDC);
		Input::Render(mBackHDC);
		SceneManager::Render(mBackHDC);

		//����ۿ� �ִ� �׸��� ���� ���ۿ� �׷���� �Ѵ�.
		BitBlt(mHdc, 0, 0, mWidth, mHeight, mBackHDC, 0, 0, SRCCOPY);
	}

}