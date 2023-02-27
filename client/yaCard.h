#pragma once

#include "yaGameObject.h"
#include "yaImage.h"


namespace ya
{
	class Card : public GameObject
	{
	public:
		Card();
		~Card();
		virtual void Initialize()override ;
		virtual void Update()override;
		virtual void Render(HDC hdc)override;
		virtual void Release()override;

	private:
		Image* mOutline;
		Image* mFrame;
		Image* mInline;

	};
}
