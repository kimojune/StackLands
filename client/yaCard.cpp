#include "yaCard.h"
#include "yaTime.h"
#include "yaSceneManager.h"
#include "yaInput.h"
#include "yaResources.h"
#include "yaTransform.h"

namespace ya
{
	Card::Card()
	{
	}
	Card::~Card()
	{
	}
	void Card::Initialize()
	{
		mImage = Resources::Load<Image>(L"Cuphead", L"..\\Resources\\Idle.bmp");
		GameObject::Initialize();
	}
	void Card::Update()
	{
		GameObject::Update();
	}
	void Card::Render(HDC hdc)
	{
		GameObject::Render(hdc);
	}
	void Card::Release()
	{
		GameObject::Release();
	}
}