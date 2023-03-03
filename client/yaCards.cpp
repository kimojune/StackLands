#include "yaCard.h"
#include "yaInput.h"
#include "yaTransform.h"

namespace ya
{
	Cards::Cards()
	{
		//mOutline = Resources::Load<Image>(L"Outline", L"..\\mResources\\CardObject\\Outline1.bmp");
		//mFrame = Resources::Load<Image>(L"Frame", L"..\\mResources\\CardObject\\Frame.bmp");
		//mInline = Resources::Load<Image>(L"mInline", L"..\\mResources\\CardObject\\Inline.bmp");

	}
	Cards::~Cards()
	{
	}
	void Cards::Initialize()
	{
		for (Card* card: )
		{
			type.Initialize();
		}

		GameObject::Initialize();
	}
	void Cards::Update()
	{
		GameObject::Update();
	}
	void Cards::Render(HDC hdc)
	{
		//BitBlt(hdc, 0, 0, mOutline->GetWidth(), mOutline->GetHeight(), mOutline->GetHdc(), 0, 0, SRCCOPY);
		//BitBlt(hdc, 0, 500, mFrame->GetWidth(), mFrame->GetHeight(), mFrame->GetHdc(), 0, 0, SRCCOPY);
		//BitBlt(hdc, 0, 700, mInline->GetWidth(), mInline->GetHeight(), mInline->GetHdc(), 0, 0, SRCCOPY);


		GameObject::Render(hdc);
	}
	void Cards::Release()
	{
		GameObject::Release();
	}
}