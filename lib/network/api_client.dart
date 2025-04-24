// import 'dart:async';
// import 'dart:io';
//
// import 'package:dio/dio.dart' hide Headers;
// import 'package:http_parser/http_parser.dart';
// import 'package:retrofit/http.dart';
// import 'package:retrofit/retrofit.dart';
//
//
//
// part 'api_client.g.dart';
//
// @RestApi()
// abstract class ApiClient {
//   factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
//
//   // ///User
//   // @POST("/api/v1/login")
//   // @Headers(<String, dynamic>{
//   //   "Content-Type": "application/x-www-form-urlencoded;charset=utf-8"
//   // })
//   // Future<LoginRes> authLogin(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/auth/refresh-tokens")
//   // @Headers(<String, dynamic>{"Required-Token": false})
//   // Future<LoginRes> refreshToken(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/auth/login/social")
//   // Future<LoginRes> loginSocial(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/signup")
//   // Future<APIResponse<SignUpRes>> signUp(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/forgot/verify")
//   // Future<APIResponse<ForgotPassWordRes>> forgotPassword(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/forgot/password")
//   // Future<APIResponse> changePassword(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/auth/session")
//   // Future<APIResponse<UserInfoRes>> getUserInfo();
//   //
//   // @GET("/api/v2/slider/site")
//   // Future<APIResponse<List<BannerRes>>> getBanners(
//   //   @Query('type') String type,
//   //   @Query('site_code') String siteCode,
//   //   @Query('page') int page,
//   //   @Query('size') int size,
//   //   @Query('status') bool status,
//   // );
//   //
//   // @GET("/api/v2/category/site")
//   // Future<APIResponse<List<CategoryRes>>> getCategories({
//   //   @Query('type_code') required String siteCode,
//   //   @Query('site') String? site,
//   //   @Query('parent_code') int? parentCode,
//   //   @Query('children') bool? children,
//   // });
//   //
//   // @GET("/api/v2/brand/site")
//   // Future<APIResponse<BrandResultsRes>> getListBrand({
//   //   @Query('site_code') required String siteCode,
//   //   @Query('primary') bool primary = true,
//   // });
//   //
//   // @GET("/api/v2/popular-website")
//   // Future<APIResponse<BrandResultsRes>> getListPopularWebsite({
//   //   @Query('primary') bool primary = true,
//   // });
//   //
//   // @GET("/api/v2/seller/site")
//   // Future<APIResponse<SellerResultRes>> getListSellerOutstanding({
//   //   @Query('site_code') required String siteCode,
//   //   @Query('main') bool primary = true,
//   // });
//   //
//   // @GET("/api/v1/favorite/stories")
//   // Future<APIResponse<SellerResultRes>> getListFavoriteSeller(
//   //     {@Query('site_code') String? site,
//   //     @Query('search') String? search,
//   //     @Query('order') String? sort,
//   //     @Query('page') int? page,
//   //     @Query('size') int? size});
//   //
//   // @GET("/api/v2/keyword/site")
//   // Future<APIResponse<List<TopSearchRes>>> getListTopSearch({
//   //   @Query('type_code') required String typeCode,
//   //   @Query('size') required int size,
//   //   @Query('page') required int page,
//   // });
//   //
//   // @GET("/api/v1/exchange-price")
//   // @Headers(<String, dynamic>{"Required-Token": false})
//   // Future<APIResponse<List<CurrencyExchangeRes>>> getCurrencyExchange();
//   //
//   // @GET("/api/v2/auction/search")
//   // Future<APIResponse<RecommendProductRes>> getRecommendProductAuction({
//   //   @Query('query') String query = "腕時計、アクセサリー",
//   //   @Query('page') required int page,
//   // });
//   //
//   // @GET("/api/v2/shopping/search")
//   // Future<APIResponse<RecommendProductRes>> getRecommendProductShopping({
//   //   @Query('query') String query = "メンズファッション",
//   //   @Query('page') required int page,
//   //   @Query('size') int size = 20,
//   //   @Query('allow') bool allow = true,
//   // });
//   //
//   // @GET("/api/v2/rakuten/search/popular")
//   // Future<APIResponse<List<ProductDetailRes>>> getRecommendProductRakuten({
//   //   @Query('query') String query = "レディースファッション",
//   //   @Query('page') required int page,
//   //   @Query('size') int size = 20,
//   //   @Query('allow') bool allow = true,
//   // });
//   //
//   // @GET("/api/v2/mercari/home/products")
//   // Future<APIResponse<List<ProductDetailRes>>> getRecommendProductMercari();
//   //
//   // @GET("/api/v2/mercari/comment/deal")
//   // Future<APIResponse<List<CommentDeal>>> getCommentDeal();
//   //
//   // @GET("/api/v2/mercari/comment/example")
//   // Future<APIResponse<List<CommentExample>>> getCommentExample();
//   //
//   // @GET("/api/v2/paypay/home")
//   // Future<APIResponse<List<ProductDetailRes>>> getRecommendProductPaypay();
//   //
//   // @GET("/api/v2/keyword/site")
//   // Future<APIResponse<List<SiteKeywordRes>>> getSiteKeyword(
//   //     {@Query('type_code') required String typeCode,
//   //     @Query('page') required int page,
//   //     @Query('size') int size = 20});
//   //
//   // @GET("/api/v2/keyword/autocomplete")
//   // Future<APIResponse<List<SiteKeywordRes>>> getSiteKeywordAutoComplete(
//   //     {@Query('site') required String site,
//   //     @Query('search') required String search,
//   //     @Query('size') int size = 10});
//   //
//   // @GET("/api/v1/favorite/products")
//   // Future<APIResponse<RecommendProductRes>> getListProductFavorite(
//   //     {@Query('site_code') String? site,
//   //     @Query('search') String? search,
//   //     @Query('sort') String? sort,
//   //     @Query('page') int? page,
//   //     @Query('size') int? size});
//   //
//   // @POST("/api/v1/favorite/product")
//   // Future<APIResponse> makeFavoriteProduct(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/favorite/store")
//   // Future<APIResponse> makeFavoriteSeller(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v2/event/search")
//   // Future<APIResponse<EventResultsRes>> getListEvent({
//   //   @Query('page') required int page,
//   //   @Query('size') required int size,
//   //   @Query('is_public') bool? isPublic,
//   //   @Query('status') bool? status,
//   //   @Query('type_mode') String? typeMode,
//   // });
//   //
//   // @GET("/api/v2/{ecommerce}/item/{id}")
//   // Future<APIResponse<ProductDetailRes>> getProductDetail({
//   //   @Path("ecommerce") required String ecommerce,
//   //   @Path("id") required String productId,
//   //   @Query('user_id') String? userId,
//   // });
//   //
//   // @GET("/api/v2/auction/relates/{id}")
//   // Future<APIResponse<List<ProductDetailRes>>> getRelateProductsAuction({
//   //   @Path("id") required String id,
//   // });
//   //
//   // @GET("/api/v2/mercari/related/{id}")
//   // Future<APIResponse<List<ProductDetailRes>>> getRelateProductsMercari({
//   //   @Path("id") required String id,
//   // });
//   //
//   // @GET("/api/v2/shopping/search")
//   // Future<APIResponse<ProductsShoppingRes>> getRelateProductsShopping({
//   //   @Query('code') required String code,
//   //   @Query('seller_id') required String sellerId,
//   // });
//   //
//   // @GET("/api/v2/paypay/relate/{id}")
//   // Future<APIResponse<List<ProductDetailRes>>> getRelateProductsPayPay({
//   //   @Path("id") required String id,
//   //   @Query('code') required String code,
//   //   @Query('categoryPath') required String categoryPath,
//   //   @Query('title') required String title,
//   // });
//   //
//   // @GET("/api/v2/auction/shipping/{id}")
//   // Future<APIResponse> getShippingFee({
//   //   @Path("id") required String id,
//   // });
//   //
//   // @GET("/api/v2/{ecommerce}/seller/{id}")
//   // Future<APIResponse<SellerInfoDetailRes>> getSellerInfo({
//   //   @Path("ecommerce") required String ecommerce,
//   //   @Path("id") required String sellerId,
//   // });
//   //
//   // @GET("/api/v1/bid/history/{id}")
//   // Future<APIResponse<List<BidderHistoryRes>>> getListBidder({
//   //   @Path("id") required String productId,
//   // });
//   //
//   // @GET("/api/v1/quote/link/search")
//   // Future<APIResponse<dynamic>> getProductQuoteSearch({
//   //   @Query("link") required String productLink,
//   // });
//   //
//   // @POST("/api/v1/cart/quote")
//   // Future<APIResponse> sendQuote(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/bid/now")
//   // Future<APIResponse<AuctionRes>> auction(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v2/auction/find")
//   // Future<APIResponse<ProductSearchResultRes>> getAuctionProductSearching({
//   //   @Query('keyword') required String keyword,
//   //   @Query('page') required int page,
//   //   @Query('category_id') int? categoryId,
//   //   @Query('ranking') required String ranking,
//   //   @Query('sort') String? sort,
//   //   @Query('order') String? order,
//   //   @Query('item_status')
//   //   int? itemStatus, // 1 = Sản phẩm mới, 2 = Đã sử dụng, K nhập query = Tất cả
//   //   @Query('store')
//   //   int? store, //1 = Cửa hàng, 2 = Cá nhân, K nhập query = Tất cả
//   //   @Query('aucmin_bidorbuy_price') required num aucMinBidOrBuyPrice,
//   //   @Query('aucmax_bidorbuy_price') required num aucMaxBidOrBuyPrice,
//   //   @Query('aucminprice') required num aucMinPrice,
//   //   @Query('aucmaxprice') required num aucMaxPrice,
//   //   @Query('option') String? option,
//   //   @Query('newly') int? newly,
//   //   @Query('fixed') required int fixed,
//   // });
//   //
//   // @GET("/api/v2/shopping/search")
//   // Future<APIResponse<ProductSearchResultRes>> getShoppingProductSearching({
//   //   @Query('keyword') required String keyword,
//   //   @Query('page') required int page,
//   //   @Query('size') required int size,
//   //   @Query('item_status') int? itemStatus,
//   //   @Query('price_from') required int priceFrom,
//   //   @Query('price_to') required int priceTo,
//   //   @Query('sort') String? sort,
//   //   @Query('category_id') int? categoryId,
//   //   @Query('seller_id') String? sellerId,
//   // });
//   //
//   // @GET("/api/v2/paypay/search")
//   // Future<APIResponse<ProductSearchResultRes>> getPayPayProductSearching({
//   //   @Query('keyword') required String keyword,
//   //   @Query('page') required int page,
//   //   @Query('spec') String? spec,
//   //   @Query('status') String? status,
//   //   @Query('price_min') required int priceMin,
//   //   @Query('price_max') required int priceMax,
//   //   @Query('sort') String? sort,
//   // });
//   //
//   // @GET("/api/v2/mercari/search")
//   // Future<APIResponse<ProductSearchResultRes>> getMercariProductSearching({
//   //   @Query('keyword') required String keyword,
//   //   @Query('conditions') String? conditions,
//   //   @Query('shippings') String? shippings,
//   //   @Query('methods') String? methods,
//   //   @Query('status') String? status,
//   //   @Query('price_min') required int priceMin,
//   //   @Query('price_max') required int priceMax,
//   //   @Query('sort_order') String? sortOrder,
//   //   @Query('sort') String? sort,
//   //   @Query('order') String? order,
//   //   @Query('page_token') String? pageToken,
//   //   @Query('category_id') int? categoryId,
//   // });
//   //
//   // @GET("/api/v2/rakuten/search")
//   // Future<APIResponse<ProductSearchResultRes>> getRakutenProductSearching({
//   //   @Query('keyword') required String keyword,
//   //   @Query('minPrice') required int minPrice,
//   //   @Query('maxPrice') required int maxPrice,
//   //   @Query('page') required int page,
//   //   @Query('size') required int size,
//   //   @Query('sort') String? sort,
//   //   @Query('category_id') int? categoryId,
//   // });
//   //
//   // @POST("/api/v1/bid/snipe")
//   // Future<APIResponse<SnipeRes>> snipe(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/bid/price/{id}")
//   // Future<APIResponse<BidPriceRes>> getBidPrice({
//   //   @Path("id") required String id,
//   // });
//   //
//   // @GET("/api/v1/bid/user-get-by-code")
//   // Future<APIResponse<BidStatusRes>> getBidStatus({
//   //   @Query("code") required String code,
//   // });
//   //
//   // @GET("/api/v1/bid/get")
//   // Future<APIResponse<BidResultsRes>> getBidResults({
//   //   @Query('search') String? search,
//   //   @Query('page') required int page,
//   //   @Query('size') int size = 20,
//   //   @Query('sort') required String sort,
//   //   @Query('time') required String time,
//   //   @Query('mode') String? mode,
//   //   @Query('all') bool? all,
//   //   @Query('order') required String order,
//   //   @Query('to') required String to,
//   //   @Query('from') required String from,
//   // });
//   //
//   // @GET("/api/v1/mercari/bids/get")
//   // Future<APIResponse<BidResultsRes>> getMercariBidResults({
//   //   @Query('search') String? search,
//   //   @Query('page') required int page,
//   //   @Query('size') int size = 20,
//   //   @Query('sort') required String sort,
//   //   @Query('time') required String time,
//   //   @Query('mode') String? mode,
//   //   @Query('all') bool? all,
//   //   @Query('order') required String order,
//   //   @Query('to') required String to,
//   //   @Query('from') required String from,
//   // });
//   //
//   // @PUT("/api/v1/bid/cancel")
//   // Future<APIResponse> cancelAuction(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v2/auction/seller/products")
//   // Future<APIResponse<ProductSearchResultRes>> getProductOfSeller({
//   //   @Query('seller_id') required String sellerId,
//   //   @Query('keyword') required String keyword,
//   //   @Query('page') required int page,
//   //   @Query('category_id') int? categoryId,
//   //   @Query('sort') String? sort,
//   //   @Query('order') String? order,
//   //   @Query('item_status')
//   //   int? itemStatus, // 1 = Sản phẩm mới, 2 = Đã sử dụng, K nhập query = Tất cả
//   //   @Query('store')
//   //   int? store, //1 = Cửa hàng, 2 = Cá nhân, K nhập query = Tất cả
//   //   @Query('aucmin_bidorbuy_price') required num aucMinBidOrBuyPrice,
//   //   @Query('aucmax_bidorbuy_price') required num aucMaxBidOrBuyPrice,
//   //   @Query('aucminprice') required num aucMinPrice,
//   //   @Query('aucmaxprice') required num aucMaxPrice,
//   //   @Query('newly') int? newly,
//   // });
//   //
//   // @GET("/api/v2/mercari/product/seller/{id}")
//   // Future<APIResponse<List<ProductDetailRes>>> getProductOfSellerMercari(
//   //     {@Path("id") required String id});
//   //
//   // @GET("/api/v2/paypay/product/seller/{id}")
//   // Future<APIResponse<ProductSearchResultRes>> getProductOfSellerPaypay(
//   //     {@Path("id") required String id});
//   //
//   // @POST("/api/v1/bid/buy")
//   // Future<APIResponse<BuyRes>> buy(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/cart/user")
//   // Future<APIResponse<List<CartRes>>> getCart();
//   //
//   // @GET("/api/v1/cart/user/for-review")
//   // Future<APIResponse<List<CartRes>>> getCartForReview();
//   //
//   // @POST("/api/v1/cart/user/payment")
//   // Future<APIResponse<List<QuotePriceCheckRes>>> checkCartBeforePayment(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/cart-for-review")
//   // Future<APIResponse<CartAddRes>> addCartForReview(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/cart")
//   // Future<APIResponse<CartAddRes>> addCart(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/cart/remove")
//   // Future<APIResponse<CartRemoveRes>> removeCart(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/favorite/store/delete")
//   // Future<APIResponse> deleteStoresFavorite(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/favorite/product/delete")
//   // Future<APIResponse> deleteProductsFavorite(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/user/notification")
//   // Future<APIResponse> saveNotificationSetting(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/user/address/user")
//   // Future<APIResponse<List<AddressRes>>> getAddress();
//   //
//   // @DELETE("/api/v1/user/address/remove/{id}")
//   // Future<APIResponse> deleteAddress({@Path("id") required String id});
//   //
//   // @GET("/api/v1/bid/cart")
//   // Future<APIResponse<BidCartRes>> getBidCart();
//   //
//   // @GET("/api/v1/quote/user/code/{id}")
//   // Future<APIResponse<OrderRes>> getOrderTrackingInfo(
//   //     {@Path("id") required String id});
//   //
//   // @GET("/api/v1/service-extras/user")
//   // Future<APIResponse<List<PacketRes>>> getPacket({
//   //   @Query('route') required String route,
//   //   @Query('mode') required String mode,
//   // });
//   //
//   // @GET("/api/v1/coupons/user")
//   // Future<APIResponse<List<CouponResultRes>>> getCoupon();
//   //
//   // @GET("/api/v1/quotes/user")
//   // Future<APIOrderResponse> getListOrderManager({
//   //   @Query('search') String? search,
//   //   @Query('page') required int page,
//   //   @Query('size') int size = 20,
//   //   @Query('sort') String? sort,
//   //   @Query('step') required String step,
//   //   @Query('all') bool? all,
//   //   @Query('order') String? order,
//   //   @Query('to') DateTime? to,
//   //   @Query('from') DateTime? from,
//   // });
//   //
//   // @POST("/api/v1/quote/user/quote")
//   // Future<APIResponse<List<PaymentRes>>> payment(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/quote/user/payment")
//   // Future<APIResponse<List<PaymentRes>>> quotePayment(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/quote/user/new")
//   // Future<APIResponse<List<PaymentRes>>> sendProductQuote(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/quote/user/fast")
//   // Future<APIResponse> negotiationQuote(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/bills/user")
//   // Future<APIResponse<InvoiceResultsRes>> getInvoice({
//   //   @Query('page') required int page,
//   //   @Query('size') required int size,
//   //   @Query('search') String? search,
//   //   @Query('from') required String from,
//   //   @Query('to') required String to,
//   //   @Query('status') String? status,
//   //   @Query('sort') String? sort,
//   //   @Query('all') bool? all,
//   // });
//   //
//   // @POST("/api/v1/upload/file/user")
//   // @MultiPart()
//   // Future<APIResponse> uploadFile(
//   //   @Part(name: 'file', contentType: 'image/jpg') File file,
//   //   @Part(name: 'type') String type,
//   // );
//   //
//   // @GET("/api/v1/notifications")
//   // Future<APIResponse<NotificationResultsRes>> getNotifications({
//   //   @Query('page') required int page,
//   //   @Query('size') int size = 20,
//   //   @Query('sort') String sort = 'created_date',
//   //   @Query('asc') int asc = -1,
//   //   @Query('read') bool? read,
//   // });
//   //
//   // @POST("/api/v1/notifications")
//   // Future<APIResponse> makeReadNotification(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/fcm-token/save")
//   // Future<APIResponse> pushFcmToken(@Body() Map<String, dynamic> body);
//   //
//   // @DELETE("/api/v1/fcm-token/remove")
//   // Future<APIResponse> deleteFcmToken(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v2/event/slug/{slug}")
//   // Future<APIResponse<EventRes>> getDetailEvent(
//   //     {@Path("slug") required String slug});
//   //
//   // @PUT("/api/v1/session/update")
//   // Future<APIResponse> updateUserInfo(@Body() Map<String, dynamic> body);
//   //
//   // @PUT("/api/v1/session/password")
//   // Future<APIResponse> changePass(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/utility/provinces")
//   // Future<APIResponse<List<ProvinceRes>>> getListProvince();
//   //
//   // @GET("/api/v1/utility/district/{provinceId}")
//   // Future<APIResponse<List<DistrictRes>>> getListDistrict(
//   //     {@Path("provinceId") required String provinceId});
//   //
//   // @GET("/api/v1/utility/ward/{districtId}")
//   // Future<APIResponse<List<WardsRes>>> getListWards(
//   //     {@Path("districtId") required String districtId});
//   //
//   // @POST("/api/v1/user/address/add")
//   // Future<APIResponse> addAddress(@Body() Map<String, dynamic> body);
//   //
//   // @PUT("/api/v1/user/address/edit/{idAddress}")
//   // Future<APIResponse> updateAddress(
//   //     {@Path("idAddress") required String idAddress,
//   //     @Body() required Map<String, dynamic> body});
//   //
//   // @POST("/api/v1/bill/print")
//   // Future<APIResponse> getHtmlToPrint(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/quotes/transits")
//   // Future<APIResponse<TransitResultRes>> getTransit({
//   //   @Query('page') required int page,
//   //   @Query('size') required int size,
//   //   @Query('search') String? search,
//   //   @Query('from') required String from,
//   //   @Query('to') required String to,
//   //   @Query('step') int? step,
//   //   @Query('sort') String? sort,
//   //   @Query('order') String? order,
//   // });
//   //
//   // @GET("/api/v1/route")
//   // Future<APIResponse<RouteCodeResResult>> getRouteCode();
//   //
//   // @GET("/api/v1/group-products")
//   // Future<APIResponse<GroupProductResResult>> getGroupProduct();
//   //
//   // @GET("/api/v1/group-prices/user")
//   // Future<APIResponse<List<GroupPriceRes>>> getGroupPrice();
//   //
//   // @POST("/api/v1/user/calculation/price")
//   // Future<APIResponse<List<EstimateRes>>> calculatorEstimate(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/user/price-calculation")
//   // Future<APIResponse<PriceCalculationRes>> priceCaculation(
//   //     @Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/quote/user/cancel")
//   // Future<APIResponse> cancelTransit(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/store")
//   // Future<APIResponse<GTSInfoRes>> getGTSInfo();
//   //
//   // @GET("/api/v1/transfer/user")
//   // Future<APIResponse<TransferResultRes>> getListTransferHis(
//   //     {@Query('page') required int page,
//   //     @Query('size') int size = 20,
//   //     @Query('search') String? search,
//   //     @Query('status') String? status});
//   //
//   // @GET("/api/v1/transations/user")
//   // Future<APIResponse<TransactionResultRes>> getListTransaction(
//   //     {@Query('page') required int page,
//   //     @Query('size') int size = 20,
//   //     @Query('search') String? search,
//   //     @Query('trans_type') String? transType});
//   //
//   // @GET("/api/v1/level-vips")
//   // Future<APIResponse<List<VipRes>>> getListVip();
//   //
//   // @POST("/api/v1/user/activate/vip")
//   // Future<APIResponse> activateVip(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/user/cancel/vip")
//   // Future<APIResponse> cancelVip(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/user/upgrade/vip")
//   // Future<APIResponse> upgradeVip(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/quote/user/transit")
//   // Future<APIResponse> createTransit(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/vouchers")
//   // Future<APIResponse<List<VoucherResult>>> getVoucherResult({
//   //   @Query('search') String? search,
//   //   @Query('status') required String status,
//   // });
//   //
//   // @POST("/api/v1/voucher")
//   // Future<APIResponse> saveVoucher(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/card/main?primary=true&status=true&card_site=SBC_HN")
//   // Future<APIResponse<BankCardResultRes>> getBankCard();
//   //
//   // @GET("/api/v1/bank/all?primary=true&status=true")
//   // Future<APIResponse<List<Bank>>> getListBank();
//   //
//   // @POST("/api/v1/transfer/refund")
//   // Future<APIResponse> orderRefund(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/bill/code/{invoiceId}")
//   // Future<APIResponse<InvoiceRes>> getInvoiceDetail(
//   //     {@Path("invoiceId") required String invoiceId});
//   //
//   // @GET("/api/v1/user/feedbacks/me")
//   // Future<APIResponse<FeedbackResultRes>> getFeedback({
//   //   @Query('page') required int page,
//   //   @Query('size') int size = 20,
//   //   @Query('status') required int status,
//   //   @Query('type') int? type,
//   //   @Query('priority') String? priority,
//   //   @Query('search') String? search,
//   //   @Query('to') required String toDate,
//   //   @Query('from') required String fromDate,
//   // });
//   //
//   // @POST("/api/v1/user/feedback")
//   // Future<APIResponse> complaint(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/user/feedback-comment")
//   // Future<APIResponse<CommentResultRes>> getComment({
//   //   @Query('page') required int page,
//   //   @Query('size') required int size,
//   //   @Query('feedback_id') required String feedbackId,
//   // });
//   //
//   // @GET("/api/v1/user/request-comment")
//   // Future<APIResponse<List<CommentUserRequestStatus>>> requestUserCommentStatus({
//   //   @Query('id') required String id,
//   // });
//   //
//   // @POST("/api/v1/user/feedback-comment")
//   // Future<APIResponse> addComment(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/user/request-comment")
//   // Future<APIResponse> requestComment(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/user/feedback/{idFeedback}")
//   // Future<APIResponse<CommentRes>> getDetailFeedback(
//   //     {@Path("idFeedback") required String idFeedback});
//   //
//   // @GET("/api/v2/system-config/store-review")
//   // Future<APIResponse<ConfigStoreRes>> getConfigStoreReview();
//   //
//   // @DELETE("/api/v2/user/delete-account")
//   // Future<APIResponse> deleteAccount();
//   // // Android Review
//   // // @GET("/api/v2/system-config/products-by-site?site=auction")
//   // // Future<APIResponse<List<ProductDetailRes>>> getProductsForReview();
//   //
//   // //IOS Review
//   // @GET("/api/v2/system-config/products-by-site?site=mercari")
//   // Future<APIResponse<List<ProductDetailRes>>> getProductsForReview();
//   //
//   // @GET("/api/v2/system-config/product-review/detail?site={site}&code={code}")
//   // Future<APIResponse<ProductDetailRes>> getProductDetailForReview({
//   //   @Path("site") required String site,
//   //   @Path("code") required String code,
//   // });
//   //
//   // @GET("/api/v1/review/sale")
//   // Future<APIResponse<SaleReviewRes>> getSaleReview({
//   //   @Query("sort") String? sort,
//   //   @Query("order") String? order,
//   // });
//   //
//   // @POST("/api/v1/review/sale")
//   // Future<APIResponse> reviewSale(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/user/feedback/save")
//   // Future<APIResponse> userFeedback(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/warehouse/get")
//   // Future<APIResponse<List<WarehouseRes>>> getWarehouse({
//   //   @Query('route') required String route,
//   // });
//   //
//   // @POST("/api/v1/card/get-qr")
//   // Future<APIResponse<QrInfoRes>> getQRByCardId(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/payme/create-transaction")
//   // Future<APIResponse<PaymeTransactionRes>> createPaymeTransaction(@Body() Map<String, dynamic> body);
//   //
//   // @POST("/api/v1/bill/user/payment")
//   // Future<APIResponse> payUserBill(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v1/card/payment-gateways")
//   // Future<APIResponse<PaymentGatewaysRes>> getUserPaymentGateway();
//   //
//   // @GET("/api/v1/bill/user/{id}")
//   // Future<APIResponse<BillSettlementRes>> getUserBill({
//   //   @Path("id") required String id,
//   // });
//   //
//   // @GET("/api/v1/mercari/bid-info/{code}")
//   // Future<APIResponse<MercariBidInfoRes>> getBidProductInfoByCode(
//   //     {@Path("code") required String code});
//   //
//   // @POST("/api/v1/mercari/user/bid")
//   // Future<APIResponse> mercariBid(@Body() Map<String, dynamic> body);
//   //
//   // @PUT("/api/v1/mercari/user/bid")
//   // Future<APIResponse> updateMrcariBid(@Body() Map<String, dynamic> body);
//   //
//   // @GET("/api/v2/us/ebay/description/{code}")
//   // Future<APIResponse<ProductDescriptionRes>> getEbayProductDescription(
//   //     {@Path("code") required String code});
// }
