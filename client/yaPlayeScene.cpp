#include "yaPlayeScene.h"
#include "yaCuphead.h"
#include "yaInput.h"
#include "yaSceneManager.h"
#include "yaBG.h"
#include "yaCard.h"

namespace ya
{
	PlayeScene::PlayeScene()
	{
	}

	PlayeScene::~PlayeScene()
	{
	}

	void PlayeScene::Initialize()
	{
		mBG = new BG();
		AddGameObject(mBG, eLayerType::BG);

		mCard = new Card();
		AddGameObject(mCard, eLayerType::Card);
		//mCuphead = new Cuphead();
		//AddGameObject(mCuphead, eLayerType::Card);

		Scene::Initialize();
	}

	void PlayeScene::Update()
	{
		if (Input::GetKeyState(eKeyCode::N) == eKeyState::Down)
		{
			SceneManager::LoadScene(eSceneType::Title);
		}

		Scene::Update();

	}

	void PlayeScene::Render(HDC hdc)
	{
		//Super::Tick();
		Scene::Render(hdc);
	}

	void PlayeScene::Release()
	{
		Scene::Release();
	}

	void PlayeScene::OnEnter()
	{
	}

	void PlayeScene::OnExit()
	{
	}


}