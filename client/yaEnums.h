#pragma once


enum class eSceneType
{
	Title,
	Play,
	Ending,
	End,
};


enum class eLayerType
{
	BG,
	Card,
	Effect,
	UI,
	End,
};

enum class eComponentType
{
	Transform,
	Collider,
	SpriteLenderer,
	Animator,
	Audio,
	End,
};

enum class eCardType
{
	Player,
	Black,
	Yellow,
	Orange,
	Pink,
	Brown,
	End,
};

enum class eCardObject
{
	Outline,
	Frame,
	Inline,
	Detail,
	Value,
	Health,
	End,
};