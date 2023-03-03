#include "yaCardType.h"
#include "yaResources.h"

namespace ya
{
	CardType::CardType(eCardType type)
	{
		*mType = type;
	}
	CardType::~CardType()
	{
	}
	void CardType::Initialize()
	{
		mImage = Resources::Load<Image>(L"Card", L"..\\mResources\\CardObject\\CardType\\player.bmp");
		Card::Initialize();
	}
	void CardType::Update()
	{
		Card::Update();
	}
	void CardType::Render(HDC hdc)
	{
		Card::Render(hdc);
	}
	void CardType::Release()
	{
		Card::Release();
	}
}