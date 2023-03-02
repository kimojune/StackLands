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


	}
	void BG::Release()
	{
		GameObject::Release();
		
	}
}