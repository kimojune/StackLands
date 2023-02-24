#pragma once
#include "yaGameObject.h"
#include "yaImage.h"

namespace ya
{
	class BG : public GameObject
	{
	public:
		BG();
		~BG();

		virtual void Initialize() override;
		virtual void Update() override;
		virtual void Render(HDC hdc) override;
		virtual void Release() override;

	private:
		Vector2 mPos;
		RECT mRect;
	};
}
