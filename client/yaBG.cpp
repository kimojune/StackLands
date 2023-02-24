#include "yaBG.h"
#include "yaApplication.h"


namespace ya
{
	
	
	BG::BG()
	{

	}
	BG::~BG()
	{
	}
	void BG::Initialize()
	{

		GameObject::Initialize();
	}
	void BG::Update()
	{
		GameObject::Update();

	}
	void BG::Render(HDC hdc)
	{
		GameObject::Render(hdc);

		// stock 오브젝트
		HBRUSH brush = CreateSolidBrush(RGB(134, 168, 135));
		HBRUSH oldBrush = (HBRUSH)SelectObject(hdc, brush);
		//Rectangle(mHdc, -1, -1, 1601, 901);

		Rectangle(hdc, 0, 0, 1501, 801);

		SelectObject(hdc, oldBrush);
		DeleteObject(brush);
	}
	void BG::Release()
	{
		GameObject::Release();
		
	}
}