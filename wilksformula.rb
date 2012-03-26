
class WilksFormula
	 def initialize()
	 	@type = 0
		@men_wilks_array = [
			1.3354, 1.3311,1.3268,1.3225,1.3182,1.314,1.3098,1.3057,1.3016,1.2975,
			1.2934,1.2894,1.2854,1.2814,1.2775,1.2736,1.2697,1.2658,1.262,1.2582,
			1.2545,1.2507,1.247,1.2433,1.2397,1.236,1.2324,1.2289,1.2253,1.2218,
			1.2183,1.2148,1.2113,1.2079,1.2045,1.2011,1.1978,1.1944,1.1911,1.1878,
			1.1846,1.1813,1.1781,1.1749,1.1717,1.1686,1.1654,1.1623,1.1592,1.1562,
			1.1531,1.1501,1.1471,1.1441,1.1411,1.1382,1.1352,1.1323,1.1294,1.1266,
			1.1237,1.1209,1.1181,1.1153,1.1125,1.1097,1.107,1.1042,1.1015,1.0988,
			1.0962,1.0935,1.0909,1.0882,1.0856,1.083,1.0805,1.0779,1.0754,1.0728,
			1.0703,1.0678,1.0653,1.0629,1.0604,1.058,1.0556,1.0532,1.0508,1.0484,
			1.046,1.0437,1.0413,1.039,1.0367,1.0344,1.0321,1.0299,1.0276,1.0254,
			1.0232,1.021,1.0188,1.0166,1.0144,1.0122,1.0101,1.0079,1.0058,1.0037,
			1.0016,0.9995,0.9975,0.9954,0.9933,0.9913,0.9893,0.9873,0.9853,0.9833,
			0.9813,0.9793,0.9773,0.9754,0.9735,0.9715,0.9696,0.9677,0.9658,0.9639,
			0.9621,0.9602,0.9583,0.9565,0.9547,0.9528,0.951,0.9492,0.9474,0.9457,
			0.9439,0.9421,0.9404,0.9386,0.9369,0.9352,0.9334,0.9317,0.93,0.9283,
			0.9267,0.925,0.9233,0.9217,0.92,0.9184,0.9168,0.9152,0.9135,0.9119,
			0.9103,0.9088,0.9072,0.9056,0.9041,0.9025,0.901,0.8994,0.8979,0.8964,
			0.8949,0.8934,0.8919,0.8904,0.8889,0.8874,0.8859,0.8845,0.883,0.8816,
			0.8802,0.8787,0.8773,0.8759,0.8745,0.8731,0.8717,0.8703,0.8689,0.8675,
			0.8662,0.8648,0.8635,0.8621,0.8608,0.8594,0.8581,0.8568,0.8555,0.8542,
			0.8529,0.8516,0.8503,0.849,0.8477,0.8465,0.8452,0.8439,0.8427,0.8415,
			0.8402,0.839,0.8378,0.8365,0.8353,0.8341,0.8329,0.8317,0.8305,0.8293,
			0.8281,0.827,0.8258,0.8246,0.8235,0.8223,0.8212,0.82,0.8189,0.8178,
			0.8166,0.8155,0.8144,0.8133,0.8122,0.8111,0.81,0.8089,0.8078,0.8067,
			0.8057,0.8046,0.8035,0.8025,0.8014,0.8004,0.7993,0.7983,0.7973,0.7962,
			0.7952,0.7942,0.7932,0.7922,0.7911,0.7901,0.7891,0.7881,0.7872,0.7862,
			0.7852,0.7842,0.7832,0.7823,0.7813,0.7804,0.7794,0.7785,0.7775,0.7766,
			0.7756,0.7747,0.7738,0.7729,0.7719,0.771,0.7701,0.7692,0.7683,0.7674,
			0.7665,0.7656,0.7647,0.7638,0.763,0.7621,0.7612,0.7603,0.7595,0.7586,
			0.7578,0.7569,0.7561,0.7552,0.7544,0.7535,0.7527,0.7519,0.751,0.7502,
			0.7494,0.7486,0.7478,0.7469,0.7461,0.7453,0.7445,0.7437,0.743,0.7422,
			0.7414,0.7406,0.7398,0.739,0.7383,0.7375,0.7367,0.736,0.7352,0.7345,
			0.7337,0.733,0.7322,0.7315,0.7307,0.73,0.7293,0.7285,0.7278,0.7271,
			0.7264,0.7256,0.7249,0.7242,0.7235,0.7228,0.7221,0.7214,0.7207,0.72,
			0.7193,0.7186,0.7179,0.7173,0.7166,0.7159,0.7152,0.7146,0.7139,0.7132,
			0.7126,0.7119,0.7112,0.7106,0.7099,0.7093,0.7086,0.708,0.7074,0.7067,
			0.7061,0.7055,0.7048,0.7042,0.7036,0.7029,0.7023,0.7017,0.7011,0.7005,
			0.6999,0.6993,0.6987,0.6981,0.6975,0.6969,0.6963,0.6957,0.6951,0.6945,
			0.6939,0.6933,0.6927,0.6922,0.6916,0.691,0.6905,0.6899,0.6893,0.6888,
			0.6882,0.6876,0.6871,0.6865,0.686,0.6854,0.6849,0.6843,0.6838,0.6832,
			0.6827,0.6822,0.6816,0.6811,0.6806,0.68,0.6795,0.679,0.6785,0.6779,
			0.6774,0.6769,0.6764,0.6759,0.6754,0.6749,0.6744,0.6739,0.6734,0.6729,
			0.6724,0.6719,0.6714,0.6709,0.6704,0.6699,0.6694,0.6689,0.6685,0.668,
			0.6675,0.667,0.6665,0.6661,0.6656,0.6651,0.6647,0.6642,0.6637,0.6633,
			0.6628,0.6624,0.6619,0.6615,0.661,0.6606,0.6601,0.6597,0.6592,0.6588,
			0.6583,0.6579,0.6575,0.657,0.6566,0.6562,0.6557,0.6553,0.6549,0.6545,
			0.654,0.6536,0.6532,0.6528,0.6523,0.6519,0.6515,0.6511,0.6507,0.6503,
			0.6499,0.6495,0.6491,0.6487,0.6483,0.6479,0.6475,0.6471,0.6467,0.6463,
			0.6459,0.6455,0.6451,0.6447,0.6444,0.644,0.6436,0.6432,0.6428,0.6424,
			0.6421,0.6417,0.6413,0.641,0.6406,0.6402,0.6398,0.6395,0.6391,0.6388,
			0.6384,0.638,0.6377,0.6373,0.637,0.6366,0.6363,0.6359,0.6356,0.6352,
			0.6349,0.6345,0.6342,0.6338,0.6335,0.6331,0.6328,0.6325,0.6321,0.6318,
			0.6315,0.6311,0.6308,0.6305,0.6301,0.6298,0.6295,0.6292,0.6288,0.6285,
			0.6282,0.6279,0.6276,0.6272,0.6269,0.6266,0.6263,0.626,0.6257,0.6254,
			0.625,0.6247,0.6244,0.6241,0.6238,0.6235,0.6232,0.6229,0.6226,0.6223,
			0.622,0.6217,0.6214,0.6211,0.6209,0.6206,0.6203,0.62,0.6197,0.6194,
			0.6191,0.6188,0.6186,0.6183,0.618,0.6177,0.6174,0.6172,0.6169,0.6166,
			0.6163,0.6161,0.6158,0.6155,0.6152,0.615,0.6147,0.6144,0.6142,0.6139,
			0.6136,0.6134,0.6131,0.6129,0.6126,0.6123,0.6121,0.6118,0.6116,0.6113,
			0.6111,0.6108,0.6106,0.6103,0.6101,0.6098,0.6096,0.6093,0.6091,0.6088,
			0.6086,0.6083,0.6081,0.6079,0.6076,0.6074,0.6071,0.6069,0.6067,0.6064,
			0.6062,0.606,0.6057,0.6055,0.6053,0.605,0.6048,0.6046,0.6044,0.6041,
			0.6039,0.6037,0.6035,0.6032,0.603,0.6028,0.6026,0.6024,0.6021,0.6019,
			0.6017,0.6015,0.6013,0.6011,0.6009,0.6006,0.6004,0.6002,0.6,0.5998,
			0.5996,0.5994,0.5992,0.599,0.5988,0.5986,0.5984,0.5982,0.598,0.5978,
			0.5976,0.5974,0.5972,0.597,0.5968,0.5966,0.5964,0.5962,0.596,0.5958,
			0.5956,0.5954,0.5952,0.595,0.5948,0.5946,0.5945,0.5943,0.5941,0.5939,
			0.5937,0.5935,0.5933,0.5932,0.593,0.5928,0.5926,0.5924,0.5923,0.5921,
			0.5919,0.5917,0.5916,0.5914,0.5912,0.591,0.5909,0.5907,0.5905,0.5903,
			0.5902,0.59,0.5898,0.5897,0.5895,0.5893,0.5892,0.589,0.5888,0.5887,
			0.5885,0.5883,0.5882,0.588,0.5878,0.5877,0.5875,0.5874,0.5872,0.587,
			0.5869,0.5867,0.5866,0.5864,0.5863,0.5861,0.586,0.5858,0.5856,0.5855,
			0.5853,0.5852,0.585,0.5849,0.5847,0.5846,0.5844,0.5843,0.5841,0.584,
			0.5839,0.5837,0.5836,0.5834,0.5833,0.5831,0.583,0.5828,0.5827,0.5826,
			0.5824,0.5823,0.5821,0.582,0.5819,0.5817,0.5816,0.5815,0.5813,0.5812,
			0.5811,0.5809,0.5808,0.5806,0.5805,0.5804,0.5803,0.5801,0.58,0.5799,
			0.5797,0.5796,0.5795,0.5793,0.5792,0.5791,0.579,0.5788,0.5787,0.5786,
			0.5785,0.5783,0.5782,0.5781,0.578,0.5778,0.5777,0.5776,0.5775,0.5774,
			0.5772,0.5771,0.577,0.5769,0.5768,0.5766,0.5765,0.5764,0.5763,0.5762,
			0.5761,0.5759,0.5758,0.5757,0.5756,0.5755,0.5754,0.5753,0.5751,0.575,
			0.5749,0.5748,0.5747,0.5746,0.5745,0.5744,0.5743,0.5742,0.574,0.5739,
			0.5738,0.5737,0.5736,0.5735,0.5734,0.5733,0.5732,0.5731,0.573,0.5729,
			0.5728,0.5727,0.5726,0.5725,0.5724,0.5723,0.5722,0.5721,0.572,0.5719,
			0.5718,0.5717,0.5716,0.5715,0.5714,0.5713,0.5712,0.5711,0.571,0.5709,
			0.5708,0.5707,0.5706,0.5705,0.5704,0.5703,0.5702,0.5701,0.57,0.5699,
			0.5698,0.5698,0.5697,0.5696,0.5695,0.5694,0.5693,0.5692,0.5691,0.569,
			0.5689,0.5688,0.5688,0.5687,0.5686,0.5685,0.5684,0.5683,0.5682,0.5681,
			0.5681,0.568,0.5679,0.5678,0.5677,0.5676,0.5675,0.5675,0.5674,0.5673,
			0.5672,0.5671,0.567,0.567,0.5669,0.5668,0.5667,0.5666,0.5665,0.5665,
			0.5664,0.5663,0.5662,0.5661,0.5661,0.566,0.5659,0.5658,0.5658,0.5657,
			0.5656,0.5655,0.5654,0.5654,0.5653,0.5652,0.5651,0.5651,0.565,0.5649,
			0.5648,0.5647,0.5647,0.5646,0.5645,0.5644,0.5644,0.5643,0.5642,0.5642,
			0.5641,0.564,0.5639,0.5639,0.5638,0.5637,0.5636,0.5636,0.5635,0.5634,
			0.5634,0.5633,0.5632,0.5631,0.5631,0.563,0.5629,0.5629,0.5628,0.5627,
			0.5627,0.5626,0.5625,0.5624,0.5624,0.5623,0.5622,0.5622,0.5621,0.562,
			0.562,0.5619,0.5618,0.5618,0.5617,0.5616,0.5616,0.5615,0.5614,0.5614,
			0.5613,0.5612,0.5612,0.5611,0.561,0.561,0.5609,0.5609,0.5608,0.5607,
			0.5607,0.5606,0.5605,0.5605,0.5604,0.5603,0.5603,0.5602,0.5602,0.5601,
			0.56,0.56,0.5599,0.5598,0.5598,0.5597,0.5597,0.5596,0.5595,0.5595,
			0.5594,0.5593,0.5593,0.5592,0.5592,0.5591,0.559,0.559,0.5589,0.5589,
			0.5588,0.5587,0.5587,0.5586,0.5586,0.5585,0.5584,0.5584,0.5583,0.5583,
			0.5582,0.5582,0.5581,0.558,0.558,0.5579,0.5579,0.5578,0.5578,0.5577,
			0.5576,0.5576,0.5575,0.5575,0.5574,0.5573,0.5573,0.5572,0.5572,0.5571,
			0.5571,0.557,0.557,0.5569,0.5568,0.5568,0.5567,0.5567,0.5566,0.5566,
			0.5565,0.5564,0.5564,0.5563,0.5563,0.5562,0.5562,0.5561,0.5561,0.556,
			0.556,0.5559,0.5558,0.5558,0.5557,0.5557,0.5556,0.5556,0.5555,0.5555,
			0.5554,0.5554,0.5553,0.5552,0.5552,0.5551,0.5551,0.555,0.555,0.5549,
			0.5549,0.5548,0.5548,0.5547,0.5547,0.5546,0.5546,0.5545,0.5544,0.5544,
			0.5543,0.5543,0.5542,0.5542,0.5541,0.5541,0.554,0.554,0.5539,0.5539,
			0.5538,0.5538,0.5537,0.5537,0.5536,0.5536,0.5535,0.5535,0.5534,0.5533,
			0.5533,0.5532,0.5532,0.5531,0.5531,0.553,0.553,0.5529,0.5529,0.5528,
			0.5528,0.5527,0.5527,0.5526,0.5526,0.5525,0.5525,0.5524,0.5524,0.5523,
			0.5523,0.5522,0.5522,0.5521,0.5521,0.552,0.552,0.5519,0.5519,0.5518,
			0.5518,0.5517,0.5516,0.5516,0.5515,0.5515,0.5514,0.5514,0.5513,0.5513,
			0.5512,0.5512,0.5511,0.5511,0.551,0.551,0.5509,0.5509,0.5508,0.5508,
			0.5507,0.5507,0.5506,0.5506,0.5505,0.5505,0.5504,0.5504,0.5503,0.5503,
			0.5502,0.5502,0.5501,0.5501,0.55,0.55,0.5499,0.5499,0.5498,0.5498,
			0.5497,0.5497,0.5496,0.5496,0.5495,0.5495,0.5494,0.5494,0.5493,0.5493,
			0.5492,0.5492,0.5491,0.5491,0.549,0.549,0.5489,0.5489,0.5488,0.5488,
			0.5487,0.5487,0.5486,0.5486,0.5485,0.5485,0.5484,0.5484,0.5483,0.5483,
			0.5482,0.5482,0.5481,0.5481,0.548,0.548,0.5479,0.5479,0.5478,0.5478,
			0.5477,0.5477,0.5476,0.5476,0.5475,0.5475,0.5474,0.5474,0.5473,0.5472,
			0.5472,0.5471,0.5471,0.547,0.547,0.5469,0.5469,0.5468,0.5468,0.5467,
			0.5467,0.5466,0.5466,0.5465,0.5465,0.5464,0.5464,0.5463,0.5463,0.5462,
			0.5462,0.5461,0.5461,0.546,0.546,0.5459,0.5459,0.5458,0.5458,0.5457,
			0.5457,0.5456,0.5456,0.5455,0.5455,0.5454,0.5454,0.5453,0.5453,0.5452,
			0.5452,0.5451,0.5451,0.545,0.545,0.5449,0.5449,0.5448,0.5448,0.5447,
			0.5447,0.5446,0.5446,0.5445,0.5445,0.5444,0.5444,0.5443,0.5443,0.5442,
			0.5442,0.5441,0.5441,0.544,0.544,0.5439,0.5439,0.5438,0.5438,0.5437,
			0.5436,0.5436,0.5435,0.5435,0.5434,0.5434,0.5433,0.5433,0.5432,0.5432,
			0.5431,0.5431,0.543,0.543,0.5429,0.5429,0.5428,0.5428,0.5427,0.5427,
			0.5426,0.5426,0.5425,0.5425,0.5424,0.5424,0.5423,0.5423,0.5422,0.5422,
			0.5421,0.5421,0.542,0.542,0.5419,0.5419,0.5418,0.5418,0.5417,0.5417,
			0.5416,0.5416,0.5415,0.5415,0.5414,0.5414,0.5413,0.5413,0.5412,0.5412,
			0.5411,0.5411,0.541,0.541,0.5409,0.5409,0.5408,0.5408,0.5407,0.5407,
			0.5406,0.5406,0.5405,0.5405,0.5404,0.5404,0.5403,0.5403,0.5402,0.5402,
			0.5401,0.5401,0.54,0.54,0.5399,0.5399,0.5398,0.5398,0.5397,0.5397,
			0.5396,0.5396,0.5395,0.5395,0.5394,0.5394,0.5393,0.5393,0.5392,0.5392,
			0.5391,0.5391,0.539,0.539,0.5389,0.5389,0.5388,0.5388,0.5387,0.5387,
			0.5387,0.5386,0.5386,0.5385,0.5385,0.5384,0.5384,0.5383,0.5383,0.5382,
			0.5382,0.5381,0.5381,0.538,0.538,0.5379,0.5379,0.5378,0.5378,0.5377,
			0.5377,0.5377,0.5376,0.5376,0.5375,0.5375,0.5374,0.5374,0.5373,0.5373,
			0.5372,0.5372,0.5371,0.5371,0.5371,0.537,0.537,0.5369,0.5369,0.5368,
			0.5368,0.5367,0.5367,0.5366,0.5366,0.5366,0.5365,0.5365,0.5364,0.5364,
			0.5363,0.5363,0.5362,0.5362,0.5362,0.5361,0.5361,0.536,0.536,0.5359,
			0.5359,0.5359,0.5358,0.5358,0.5357,0.5357,0.5356,0.5356,0.5356,0.5355,
			0.5355,0.5354,0.5354,0.5353,0.5353,0.5353,0.5352,0.5352,0.5351,0.5351,
			0.5351,0.535,0.535,0.5349,0.5349,0.5349,0.5348,0.5348,0.5347,0.5347,
			0.5347,0.5346,0.5346,0.5345,0.5345,0.5345,0.5344,0.5344,0.5344,0.5343,
			0.5343,0.5342,0.5342,0.5342,0.5341,0.5341,0.5341,0.534,0.534,0.534,
			0.5339,0.5339,0.5338,0.5338,0.5338,0.5337,0.5337,0.5337,0.5336,0.5336,
			0.5336,0.5335,0.5335,0.5335,0.5334,0.5334,0.5334,0.5333,0.5333,0.5333,
			0.5332,0.5332,0.5332,0.5332,0.5331,0.5331,0.5331,0.533,0.533,0.533,
			0.5329,0.5329,0.5329,0.5329,0.5328,0.5328,0.5328,0.5327,0.5327,0.5327,
			0.5327,0.5326,0.5326,0.5326,0.5326,0.5325,0.5325,0.5325,0.5325,0.5324,
			0.5324,0.5324,0.5324,0.5323,0.5323,0.5323,0.5323,0.5322,0.5322,0.5322,
			0.5322,0.5322,0.5321,0.5321,0.5321,0.5321,0.5321,0.532,0.532,0.532,
			0.532,0.532,0.5319,0.5319,0.5319,0.5319,0.5319,0.5319,0.5318,0.5318,
			0.5318,0.5318,0.5318,0.5318,0.5318,0.5317,0.5317,0.5317,0.5317,0.5317,
			0.5317,0.5317,0.5317,0.5317,0.5316,0.5316,0.5316,0.5316,0.5316,0.5316,
			0.5316,0.5316,0.5316,0.5316,0.5316,0.5315,0.5315,0.5315,0.5315,0.5315,
			0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,
			0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,
			0.5315,0.5315,0.5315,0.5315,0.5315,0.5315,0.5316,0.5316,0.5316,0.5316,
			0.5316,0.5316,0.5316,0.5316,0.5316,0.5316,0.5316,0.5317,0.5317,0.5317,
			0.5317,0.5317,0.5317,0.5317,0.5318,0.5318,0.5318,0.5318,0.5318,0.5318]

		@women_wilks_array = [
			1.4936,1.4915,1.4894,1.4872,1.4851,1.4830,1.4809,1.4788,1.4766,1.4745,
			1.4724,1.4702,1.4681,1.4660,1.4638,1.4617,1.4595,1.4574,1.4552,1.4531,
			1.4510,1.4488,1.4467,1.4445,1.4424,1.4402,1.4381,1.4359,1.4338,1.4316,
			1.4295,1.4273,1.4252,1.4231,1.4209,1.4188,1.4166,1.4145,1.4123,1.4102,
			1.4081,1.4059,1.4038,1.4017,1.3995,1.3974,1.3953,1.3932,1.3910,1.3889,
			1.3868,1.3847,1.3825,1.3804,1.3783,1.3762,1.3741,1.3720,1.3699,1.3678,
			1.3657,1.3636,1.3615,1.3594,1.3573,1.3553,1.3532,1.3511,1.3490,1.3470,
			1.3449,1.3428,1.3408,1.3387,1.3367,1.3346,1.3326,1.3305,1.3285,1.3265,
			1.3244,1.3224,1.3204,1.3183,1.3163,1.3143,1.3123,1.3103,1.3083,1.3063,
			1.3043,1.3023,1.3004,1.2984,1.2964,1.2944,1.2925,1.2905,1.2885,1.2866,
			1.2846,1.2827,1.2808,1.2788,1.2769,1.2750,1.2730,1.2711,1.2692,1.2673,
			1.2654,1.2635,1.2616,1.2597,1.2578,1.2560,1.2541,1.2522,1.2504,1.2485,
			1.2466,1.2448,1.2429,1.2411,1.2393,1.2374,1.2356,1.2338,1.2320,1.2302,
			1.2284,1.2266,1.2248,1.2230,1.2212,1.2194,1.2176,1.2159,1.2141,1.2123,
			1.2106,1.2088,1.2071,1.2054,1.2036,1.2019,1.2002,1.1985,1.1967,1.1950,
			1.1933,1.1916,1.1900,1.1883,1.1866,1.1849,1.1832,1.1816,1.1799,1.1783,
			1.1766,1.1750,1.1733,1.1717,1.1701,1.1684,1.1668,1.1652,1.1636,1.1620,
			1.1604,1.1588,1.1572,1.1556,1.1541,1.1525,1.1509,1.1494,1.1478,1.1463,
			1.1447,1.1432,1.1416,1.1401,1.1386,1.1371,1.1355,1.1340,1.1325,1.1310,
			1.1295,1.1281,1.1266,1.1251,1.1236,1.1221,1.1207,1.1192,1.1178,1.1163,
			1.1149,1.1134,1.1120,1.1106,1.1092,1.1078,1.1063,1.1049,1.1035,1.1021,
			1.1007,1.0994,1.0980,1.0966,1.0952,1.0939,1.0925,1.0911,1.0898,1.0884,
			1.0871,1.0858,1.0844,1.0831,1.0818,1.0805,1.0792,1.0779,1.0765,1.0753,
			1.0740,1.0727,1.0714,1.0701,1.0688,1.0676,1.0663,1.0650,1.0638,1.0625,
			1.0613,1.0601,1.0588,1.0576,1.0564,1.0551,1.0539,1.0527,1.0515,1.0503,
			1.0491,1.0479,1.0467,1.0455,1.0444,1.0432,1.0420,1.0408,1.0397,1.0385,
			1.0374,1.0362,1.0351,1.0339,1.0328,1.0317,1.0306,1.0294,1.0283,1.0272,
			1.0261,1.0250,1.0239,1.0228,1.0217,1.0206,1.0195,1.0185,1.0174,1.0163,
			1.0153,1.0142,1.0131,1.0121,1.0110,1.0100,1.0090,1.0079,1.0069,1.0059,
			1.0048,1.0038,1.0028,1.0018,1.0008,0.9998,0.9988,0.9978,0.9968,0.9958,
			0.9948,0.9939,0.9929,0.9919,0.9910,0.9900,0.9890,0.9881,0.9871,0.9862,
			0.9852,0.9843,0.9834,0.9824,0.9815,0.9806,0.9797,0.9788,0.9779,0.9769,
			0.9760,0.9751,0.9742,0.9734,0.9725,0.9716,0.9707,0.9698,0.9689,0.9681,
			0.9672,0.9663,0.9655,0.9646,0.9638,0.9629,0.9621,0.9613,0.9604,0.9596,
			0.9587,0.9579,0.9571,0.9563,0.9555,0.9547,0.9538,0.9530,0.9522,0.9514,
			0.9506,0.9498,0.9491,0.9483,0.9475,0.9467,0.9459,0.9452,0.9444,0.9436,
			0.9429,0.9421,0.9414,0.9406,0.9399,0.9391,0.9384,0.9376,0.9369,0.9362,
			0.9354,0.9347,0.9340,0.9333,0.9326,0.9318,0.9311,0.9304,0.9297,0.9290,
			0.9283,0.9276,0.9269,0.9263,0.9256,0.9249,0.9242,0.9235,0.9229,0.9222,
			0.9215,0.9209,0.9202,0.9195,0.9189,0.9182,0.9176,0.9169,0.9163,0.9156,
			0.9150,0.9144,0.9137,0.9131,0.9125,0.9119,0.9112,0.9106,0.9100,0.9094,
			0.9088,0.9082,0.9076,0.9070,0.9064,0.9058,0.9052,0.9046,0.9040,0.9034,
			0.9028,0.9023,0.9017,0.9011,0.9005,0.9000,0.8994,0.8988,0.8983,0.8977,
			0.8972,0.8966,0.8961,0.8955,0.8950,0.8944,0.8939,0.8933,0.8928,0.8923,
			0.8917,0.8912,0.8907,0.8902,0.8896,0.8891,0.8886,0.8881,0.8876,0.8871,
			0.8866,0.8861,0.8856,0.8851,0.8846,0.8841,0.8836,0.8831,0.8826,0.8821,
			0.8816,0.8811,0.8807,0.8802,0.8797,0.8792,0.8788,0.8783,0.8778,0.8774,
			0.8769,0.8765,0.8760,0.8755,0.8751,0.8746,0.8742,0.8737,0.8733,0.8729,
			0.8724,0.8720,0.8716,0.8711,0.8707,0.8703,0.8698,0.8694,0.8690,0.8686,
			0.8681,0.8677,0.8673,0.8669,0.8665,0.8661,0.8657,0.8653,0.8649,0.8645,
			0.8641,0.8637,0.8633,0.8629,0.8625,0.8621,0.8617,0.8613,0.8609,0.8606,
			0.8602,0.8598,0.8594,0.8590,0.8587,0.8583,0.8579,0.8576,0.8572,0.8568,
			0.8565,0.8561,0.8558,0.8554,0.8550,0.8547,0.8543,0.8540,0.8536,0.8533,
			0.8530,0.8526,0.8523,0.8519,0.8516,0.8513,0.8509,0.8506,0.8503,0.8499,
			0.8496,0.8493,0.8489,0.8486,0.8483,0.8480,0.8477,0.8473,0.8470,0.8467,
			0.8464,0.8461,0.8458,0.8455,0.8452,0.8449,0.8446,0.8443,0.8440,0.8437,
			0.8434,0.8431,0.8428,0.8425,0.8422,0.8419,0.8416,0.8413,0.8410,0.8407,
			0.8405,0.8402,0.8399,0.8396,0.8393,0.8391,0.8388,0.8385,0.8382,0.8380,
			0.8377,0.8374,0.8372,0.8369,0.8366,0.8364,0.8361,0.8359,0.8356,0.8353,
			0.8351,0.8348,0.8346,0.8343,0.8341,0.8338,0.8336,0.8333,0.8331,0.8328,
			0.8326,0.8323,0.8321,0.8319,0.8316,0.8314,0.8311,0.8309,0.8307,0.8304,
			0.8302,0.8300,0.8297,0.8295,0.8293,0.8291,0.8288,0.8286,0.8284,0.8282,
			0.8279,0.8277,0.8275,0.8273,0.8271,0.8268,0.8266,0.8264,0.8262,0.8260,
			0.8258,0.8256,0.8253,0.8251,0.8249,0.8247,0.8245,0.8243,0.8241,0.8239,
			0.8237,0.8235,0.8233,0.8231,0.8229,0.8227,0.8225,0.8223,0.8221,0.8219,
			0.8217,0.8215,0.8214,0.8212,0.8210,0.8208,0.8206,0.8204,0.8202,0.8200,
			0.8198,0.8197,0.8195,0.8193,0.8191,0.8189,0.8188,0.8186,0.8184,0.8182,
			0.8180,0.8179,0.8177,0.8175,0.8173,0.8172,0.8170,0.8168,0.8167,0.8165,
			0.8163,0.8161,0.8160,0.8158,0.8156,0.8155,0.8153,0.8152,0.8150,0.8148,
			0.8147,0.8145,0.8143,0.8142,0.8140,0.8139,0.8137,0.8135,0.8134,0.8132,
			0.8131,0.8129,0.8128,0.8126,0.8124,0.8123,0.8121,0.8120,0.8118,0.8117,
			0.8115,0.8114,0.8112,0.8111,0.8109,0.8108,0.8106,0.8105,0.8103,0.8102,
			0.8101,0.8099,0.8098,0.8096,0.8095,0.8093,0.8092,0.8090,0.8089,0.8088,
			0.8086,0.8085,0.8083,0.8082,0.8081,0.8079,0.8078,0.8077,0.8075,0.8074,
			0.8072,0.8071,0.8070,0.8068,0.8067,0.8066,0.8064,0.8063,0.8062,0.8060,
			0.8059,0.8058,0.8056,0.8055,0.8054,0.8052,0.8051,0.8050,0.8049,0.8047,
			0.8046,0.8045,0.8043,0.8042,0.8041,0.8040,0.8038,0.8037,0.8036,0.8034,
			0.8033,0.8032,0.8031,0.8029,0.8028,0.8027,0.8026,0.8024,0.8023,0.8022,
			0.8021,0.8020,0.8018,0.8017,0.8016,0.8015,0.8013,0.8012,0.8011,0.8010,
			0.8009,0.8007,0.8006,0.8005,0.8004,0.8003,0.8001,0.8000,0.7999,0.7998,
			0.7997,0.7995,0.7994,0.7993,0.7992,0.7991,0.7989,0.7988,0.7987,0.7986,
			0.7985,0.7984,0.7982,0.7981,0.7980,0.7979,0.7978,0.7977,0.7975,0.7974,
			0.7973,0.7972,0.7971,0.7970,0.7969,0.7967,0.7966,0.7965,0.7964,0.7963,
			0.7962,0.7960,0.7959,0.7958,0.7957,0.7956,0.7955,0.7954,0.7953,0.7951,
			0.7950,0.7949,0.7948,0.7947,0.7946,0.7945,0.7943,0.7942,0.7941,0.7940,
			0.7939,0.7938,0.7937,0.7936,0.7934,0.7933,0.7932,0.7931,0.7930,0.7929,
			0.7928,0.7927,0.7926,0.7924,0.7923,0.7922,0.7921,0.7920,0.7919,0.7918,
			0.7917,0.7915,0.7914,0.7913,0.7912,0.7911,0.7910,0.7909,0.7908,0.7907,
			0.7905,0.7904,0.7903,0.7902,0.7901,0.7900,0.7899,0.7898,0.7897,0.7895,
			0.7894,0.7893,0.7892,0.7891,0.7890,0.7889,0.7888,0.7887,0.7886,0.7884,
			0.7883,0.7882,0.7881,0.7880,0.7879,0.7878,0.7877,0.7876,0.7875,0.7873,
			0.7872,0.7871,0.7870,0.7869,0.7868,0.7867,0.7866,0.7865,0.7864,0.7862,
			0.7861,0.7860,0.7859,0.7858,0.7857,0.7856,0.7855,0.7854,0.7853,0.7852,
			0.7850,0.7849,0.7848,0.7847,0.7846,0.7845,0.7844,0.7843,0.7842,0.7841,
			0.7840,0.7838,0.7837,0.7836,0.7835,0.7834,0.7833,0.7832,0.7831,0.7830,
			0.7829,0.7828,0.7827,0.7825,0.7824,0.7823,0.7822,0.7821,0.7820,0.7819,
			0.7818,0.7817,0.7816,0.7815,0.7814,0.7813,0.7812,0.7811,0.7809,0.7808,
			0.7807,0.7806,0.7805,0.7804,0.7803,0.7802,0.7801,0.7800,0.7799,0.7798,
			0.7797,0.7796,0.7795,0.7794,0.7793,0.7792,0.7791,0.7790,0.7789,0.7787,
			0.7786,0.7785,0.7784,0.7783,0.7782,0.7781,0.7780,0.7779,0.7778,0.7777,
			0.7776,0.7775,0.7774,0.7773,0.7772,0.7771,0.7770,0.7769,0.7768,0.7767,
			0.7766,0.7765,0.7764,0.7763,0.7762,0.7761,0.7760,0.7759,0.7759,0.7758,
			0.7757,0.7756,0.7755,0.7754,0.7753,0.7752,0.7751,0.7750,0.7749,0.7748,
			0.7747,0.7746,0.7745,0.7744,0.7744,0.7743,0.7742,0.7741,0.7740,0.7739,
			0.7738,0.7737,0.7736,0.7736,0.7735,0.7734,0.7733,0.7732,0.7731,0.7730,
			0.7730,0.7729,0.7728,0.7727,0.7726,0.7725,0.7725,0.7724,0.7723,0.7722,
			0.7721,0.7721,0.7720,0.7719,0.7718,0.7717,0.7717,0.7716,0.7715,0.7714,
			0.7714,0.7713,0.7712,0.7712,0.7711,0.7710,0.7709,0.7709,0.7708,0.7707,
			0.7707,0.7706,0.7705,0.7705,0.7704,0.7703,0.7703,0.7702,0.7702,0.7701,
			0.7700,0.7700,0.7699,0.7699,0.7698,0.7698,0.7697,0.7696,0.7696,0.7695,
			0.7695,0.7694,0.7694,0.7693,0.7693,0.7692,0.7692,0.7691,0.7691,0.7691]
	end

	def set_type(type)
		@type = type
	end

	def get_factor(weight) 
		factor = 0 
		if @type == 1
			factor = get_men_factor(weight)
		else
			factor = get_women_factor(weight)
		end
		return factor
	end

	def get_formula(weight,total) 
		formula = 0 
		if @type == 1
			formula = get_men_formula(weight,total)
		else
			formula = get_women_formula(weight,total)
		end
		return formula
	end

	def get_index(weight) 
		return (weight * 10) - 400
	end

	def get_men_factor(weight)
		res = 0
		if weight  < 40.0
    			return 1.3354
    		end
		if weight  > 205.9
    			return 0.5318
    		end

    		if weight >= 40.0 && weight <= 205.9
        		tmp = get_index(weight)
	        	res = @men_wilks_array[tmp]
    		end
	    	res
	end

	def get_men_formula(weight,total)
		factor = get_men_factor(weight)
		return factor * total
	end

	def get_women_factor(weight)
		res = 0
		if weight  < 40.0
    			return 1.4936
    		end
		if weight  > 150.9
    			return 0.7691
    		end

    		if weight >= 40.0 && weight <= 150.9
        		tmp = get_index(weight)
	        	res = @women_wilks_array[tmp]
    		end
	    	res
	end

	def get_women_formula(weight,total)
		factor = get_women_factor(weight)
		return factor * total
	end
end
