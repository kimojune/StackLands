#include "yaApplication.h"
#include "yaSceneManager.h"
#include "yaTime.h"
#include "yaInput.h"


namespace ya
{
	Application::Application()
		:mHwnd(NULL)
		,mHdc(NULL)
	{
	}

	Application::~Application()
	{
		//SceneManager::Release();
		//Time::Release();
	}

	void Application::Initialize(HWND hWnd)
	{
		mHwnd = hWnd;
		mHdc = GetDC(hWnd);
		mWidth = 1500;
		mHeight = 800;

		//
		RECT rect = { 0,0,mWidth,mHeight };
		AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, false);

		mRect = rect;
		
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

	void Application::Run()
	{
		Update();
		Render();
	}

	void Application::Update()
	{
		Time::Update();
		Input::Update();
		SceneManager::Update();
	}

	void Application::Render()
	{
		//clear
		// stock ������Ʈ
		// ���� 134,168,135
		Clear();

		//����ۿ� �ִ� �׸��� ���� ���ۿ� �׷���� �Ѵ�.
		BitBlt(mHdc, 0, 0, mWidth, mHeight, mBackHDC, 0, 0, SRCCOPY);
	}

	void Application::Clear()
	{
		// ���� 134,168,135
		HBRUSH brush = CreateSolidBrush(RGB(134, 168, 135));
		HBRUSH oldBrush = (HBRUSH)SelectObject(mBackHDC, brush);
		//Rectangle(mHdc, -1, -1, 1601, 901);

		//Rectangle(mBackHDC, 0, 0, 1501, 801);
		Rectangle(mBackHDC, mRect.left, mRect.top, mRect.right - mRect.left
			, mRect.bottom - mRect.top);

		SelectObject(mBackHDC, oldBrush);
		DeleteObject(brush);
		Time::Render(mBackHDC);
		Input::Render(mBackHDC);
		SceneManager::Render(mBackHDC);
	}

}