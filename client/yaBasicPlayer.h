#pragma once

#include "yaCard.h"

namespace ya
{
	class BasicPlayer : public Card

	{
	public:
		BasicPlayer();
		~BasicPlayer();
		virtual void Initialize()override;
		virtual void Update()override;
		virtual void Render(HDC hdc)override;
		virtual void Release()override;

	private:
		

	};
}
