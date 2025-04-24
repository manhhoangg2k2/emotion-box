// import 'dart:io';
//
// import 'package:flutter_base/models/entities/user/user_info.dart';
// import 'package:flutter_base/models/enums/trading_option.dart';
// import 'package:flutter_base/models/request/delivery_places/address_delivery_req.dart';
// import 'package:flutter_base/models/request/payment/price_calculation_req.dart';
// import 'package:flutter_base/models/request/quote/quote_before_payment_res.dart';
// import 'package:flutter_base/models/request/quote/quote_payment_req.dart';
// import 'package:flutter_base/models/request/quote/quote_req.dart';
// import 'package:flutter_base/models/request/transit/create_transit_req.dart';
// import 'package:flutter_base/models/response/account/estimate/estimate_res.dart';
// import 'package:flutter_base/models/response/account/estimate/group_product_res.dart';
// import 'package:flutter_base/models/response/account/estimate/route_code_res.dart';
// import 'package:flutter_base/models/response/account/feedback_complaint/comment_feedback_res.dart';
// import 'package:flutter_base/models/response/account/feedback_complaint/feedback_res.dart';
// import 'package:flutter_base/models/response/account/gtshop_res.dart';
// import 'package:flutter_base/models/response/account/invoice_res.dart';
// import 'package:flutter_base/models/response/account/transit/transit_res.dart';
// import 'package:flutter_base/models/response/account/transit/warehouse_res.dart';
// import 'package:flutter_base/models/response/account/vip_res.dart';
// import 'package:flutter_base/models/response/account/voucher_res.dart';
// import 'package:flutter_base/models/response/address/province_res.dart';
// import 'package:flutter_base/models/response/api_order_response.dart';
// import 'package:flutter_base/models/response/bid/auction_res.dart';
// import 'package:flutter_base/models/response/bid/bid_list_res.dart';
// import 'package:flutter_base/models/response/bid/bid_price_res.dart';
// import 'package:flutter_base/models/response/bid/bidder_history_res.dart';
// import 'package:flutter_base/models/response/bid/buy_res.dart';
// import 'package:flutter_base/models/response/bid/snipe_res.dart';
// import 'package:flutter_base/models/response/cart/cart_add_res.dart';
// import 'package:flutter_base/models/response/cart/cart_remove_res.dart';
// import 'package:flutter_base/models/response/cart/cart_res.dart';
// import 'package:flutter_base/models/response/group_price/group_price_res.dart';
// import 'package:flutter_base/models/response/home/category_res.dart';
// import 'package:flutter_base/models/response/home/event_res.dart';
// import 'package:flutter_base/models/response/home/seller_info_detail_result_res.dart';
// import 'package:flutter_base/models/response/home/top_search_res.dart';
// import 'package:flutter_base/models/response/notification/notification_type_setting_res.dart';
// import 'package:flutter_base/models/response/payment/address_res.dart';
// import 'package:flutter_base/models/response/payment/coupon_res.dart';
// import 'package:flutter_base/models/response/payment/packet_res.dart';
// import 'package:flutter_base/models/response/payment/payment_res.dart';
// import 'package:flutter_base/models/response/payment/price_calculation_res.dart';
// import 'package:flutter_base/models/response/product/product_description_res.dart';
// import 'package:flutter_base/models/response/product/product_detail_res.dart';
// import 'package:flutter_base/models/response/product/product_shopping_res.dart';
// import 'package:flutter_base/network/api_client.dart';
// import 'package:flutter_base/network/api_util.dart';
//
// import '../models/entities/product/product_model.dart';
// import '../models/request/payment/payment_request.dart';
// import '../models/response/account/sale/sale_review_res.dart';
// import '../models/response/address/district_res.dart';
// import '../models/response/address/wards_res.dart';
// import '../models/response/api_response.dart';
// import '../models/response/bid/bid_cart_res.dart';
// import '../models/response/bid/bid_status_res.dart';
// import '../models/response/bid/mercari_bid_info_res.dart';
// import '../models/response/bill/bill_settlement_res.dart';
// import '../models/response/config/config_store_res.dart';
// import '../models/response/home/banner_res.dart';
// import '../models/response/home/brand_res.dart';
// import '../models/response/home/seller_result_res.dart';
// import '../models/response/notification/notification_res.dart';
// import '../models/response/order/order_res.dart';
// import '../models/response/product/comment_deal_res.dart';
// import '../models/response/product/comment_example_res.dart';
// import '../models/response/product/comment_user_request_status.dart';
// import '../models/response/product/currency_exchange_res.dart';
// import '../models/response/product/product_search_result_res.dart';
// import '../models/response/product/recommend_product_res.dart';
// import '../models/response/product/site_keyword_res.dart';
// import '../models/response/quote_price_check_res.dart';
// import '../models/response/recharge/bank_card_result_res.dart';
// import '../models/response/wallet/payme_transaction_res.dart';
// import '../models/response/wallet/payment_gateways_res.dart';
// import '../models/response/wallet/qr_info_res.dart';
// import '../models/response/wallet/transaction_result_res.dart';
// import '../models/response/wallet/transfer_res.dart';
//
// abstract class MainRepository {
//   Future<APIResponse<List<BannerRes>>> getBanners(
//       {required String type, required String sideCode});
//
//   Future<APIResponse<List<CategoryRes>>> getCategories({
//     required String typeCode,
//     int? parentCode,
//     bool? children,
//   });
//
//   Future<APIResponse<BrandResultsRes>> getListBrand({required String siteCode});
//
//   Future<APIResponse<BrandResultsRes>> getListPopularWebsite();
//
//   Future<APIResponse<SellerResultRes>> getListSellerOutstanding(
//       {required String siteCode});
//
//   Future<APIResponse<SellerResultRes>> getListFavoriteSeller(
//       {String? site, String? search, String? sort, int? page, int? size});
//
//   Future<APIResponse<List<TopSearchRes>>> getListTopSearch(
//       {required String typeCode});
//
//   Future<APIResponse<List<CurrencyExchangeRes>>> getCurrencyExchange();
//
//   Future<APIResponse<RecommendProductRes>> getRecommendProductAuction(
//       {required int page});
//
//   Future<APIResponse<RecommendProductRes>> getRecommendProductShopping(
//       {required int page});
//
//   Future<APIResponse<List<ProductDetailRes>>> getRecommendProductRakuten(
//       {required int page});
//
//   Future<APIResponse<List<ProductDetailRes>>> getRecommendProductMercari();
//
//   Future<APIResponse<List<CommentDeal>>> getCommentDeal();
//  
//   Future<APIResponse<List<CommentExample>>> getCommentExample();
//
//   Future<APIResponse<List<ProductDetailRes>>> getRecommendProductPaypay();
//
//   Future<APIResponse<List<SiteKeywordRes>>> getSiteKeyword(
//       {required String typeCode, required int page, required int size});
//
//   Future<APIResponse<List<SiteKeywordRes>>> getSiteKeywordAutoComplete(
//       {required String site, required String search});
//
//   Future<APIResponse<RecommendProductRes>> getListProductFavorite(
//       {String? site, String? search, String? sort, int? page, int? size});
//
//   Future<APIResponse> makeFavoriteProduct({required ProductEntity productRes});
//
//   Future<APIResponse> makeFavoriteSeller({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String image,
//     required String remark,
//   });
//
//   Future<APIResponse<EventResultsRes>> getListEvent(
//       {required int page,
//       required int size,
//       bool? isPublic,
//       String? typeMode,
//       bool? status});
//
//   Future<APIResponse<UserInfoRes>> getUserInfo();
//
//   Future<APIResponse<ProductDetailRes>> getProductDetail(
//       {required String typeCode, required String id, String? userId});
//
//   Future<APIResponse<List<ProductDetailRes>>> getRelateProductsAuction(
//       {required String id});
//
//   Future<APIResponse<List<ProductDetailRes>>> getRelateProductsMercari(
//       {required String id});
//
//   Future<APIResponse<ProductsShoppingRes>> getRelateProductsShopping({
//     required String code,
//     required String sellerId,
//   });
//
//   Future<APIResponse<List<ProductDetailRes>>> getRelateProductsPayPay({
//     required String id,
//     required String code,
//     required String categoryPath,
//     required String title,
//   });
//
//   Future<APIResponse> getShippingFee({
//     required String id,
//   });
//
//   Future<APIResponse<SellerInfoDetailRes>> getSellerInfo({
//     required String sellerId,
//     required String ecommerce,
//   });
//
//   Future<APIResponse<List<BidderHistoryRes>>> getListBidder(
//       {required String productId});
//
//   Future<APIResponse> getProductQuoteSearch({required String productLink});
//
//   Future<APIResponse> sendQuote({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String url,
//     required num price,
//     required String currency,
//     required String sku,
//     required List<String> images,
//     required String description,
//     required String customerName,
//     required String customerPhone,
//     required String customerEmail,
//     required String customerAddress,
//   });
//
//   Future<APIResponse> sendProductQuote({
//     required String link,
//     required String name,
//     required num originPrice,
//     required String imageRoot,
//     required List<String> images,
//     required String routeCode,
//     required String note,
//     required String currency,
//     required String shipMode,
//     required num price,
//     required num qty,
//     required num weight,
//     required num quality,
//     required num goodsValues,
//     required num exchangeRate,
//   });
//
//   Future<APIResponse<AuctionRes>> auction({
//     required String mode,
//     required String sellerId,
//     required String code,
//     required String name,
//     required String url,
//     required double tax,
//     required int shippingCharges,
//     required int exchangeRate,
//     required String currency,
//     required int qty,
//     required int price,
//     required String shipMode,
//     required List<dynamic> servicesExtra,
//     required String saleId,
//     required int bids,
//     required String endTime,
//     required List<String> images,
//     required double weight,
//   });
//
//   Future<APIResponse<SnipeRes>> snipe({
//     required String mode,
//     required String sellerId,
//     required String code,
//     required String name,
//     required String url,
//     required double tax,
//     required int shippingCharges,
//     required int exchangeRate,
//     required String currency,
//     required int qty,
//     required int price,
//     required String shipMode,
//     required List<dynamic> servicesExtra,
//     required String saleId,
//     required int bids,
//     required String endTime,
//     required List<String> images,
//     required double weight,
//   });
//
//   Future<APIResponse<ProductSearchResultRes>> getAuctionProductSearching({
//     required String keyword,
//     required int page,
//     int? categoryId,
//     required String ranking,
//     String? sort,
//     String? order,
//     int? itemStatus,
//     int? store,
//     required num aucMinBidOrBuyPrice,
//     required num aucMaxBidOrBuyPrice,
//     required num aucMinPrice,
//     required num aucMaxPrice,
//     String? option,
//     int? newly,
//     required int fixed,
//   });
//
//   Future<APIResponse<ProductSearchResultRes>> getShoppingProductSearching({
//     required String keyword,
//     required int page,
//     required int size,
//     String? sort,
//     int? itemStatus,
//     required int priceFrom,
//     required int priceTo,
//     int? categoryId,
//     String? sellerId,
//   });
//
//   Future<APIResponse<ProductSearchResultRes>> getPayPayProductSearching({
//     required String keyword,
//     required int page,
//     String? sort,
//     String? spec,
//     String? status,
//     required int priceMin,
//     required int priceMax,
//   });
//
//   Future<APIResponse<ProductSearchResultRes>> getMercariProductSearching({
//     required String keyword,
//     String? conditions,
//     String? shippings,
//     String? methods,
//     String? status,
//     required int priceMin,
//     required int priceMax,
//     String? sortOrder,
//     String? sort,
//     String? order,
//     String? pageToken,
//     int? categoryId,
//   });
//
//   Future<APIResponse<ProductSearchResultRes>> getRakutenProductSearching({
//     required String keyword,
//     required int minPrice,
//     required int maxPrice,
//     required int page,
//     required int size,
//     String? sort,
//     int? categoryId,
//   });
//
//   Future<APIResponse<BidPriceRes>> getBidPrice({required String id});
//
//   Future<APIResponse<BidStatusRes>> getBidStatus({required String code});
//
//   Future<APIResponse<BidResultsRes>> getBidResults({
//     String? search,
//     required int page,
//     required String sort,
//     required String time,
//     String? mode,
//     bool? all,
//     required String order,
//     required String to,
//     required String from,
//   });
//
//   Future<APIResponse<BidResultsRes>> getMercariBidResults({
//     String? search,
//     required int page,
//     required String sort,
//     required String time,
//     String? mode,
//     bool? all,
//     required String order,
//     required String to,
//     required String from,
//   });
//
//   Future<APIResponse> cancelAuction({
//     required List<String> ids,
//   });
//
//   Future<APIResponse<ProductSearchResultRes>> getProductOfSeller({
//     required String sellerId,
//     required String keyword,
//     required int page,
//     int? categoryId,
//     String? sort,
//     String? order,
//     int? itemStatus,
//     int? store,
//     required num aucMinBidOrBuyPrice,
//     required num aucMaxBidOrBuyPrice,
//     required num aucMinPrice,
//     required num aucMaxPrice,
//     int? newly,
//   });
//
//   Future<APIResponse<List<ProductDetailRes>>> getProductOfSellerMercari(
//       {required String sellerId});
//
//   Future<APIResponse<ProductSearchResultRes>> getProductOfSellerPaypay(
//       {required String sellerId});
//
//   Future<APIResponse<BuyRes>> buy({
//     required String mode,
//     required String sellerId,
//     required String code,
//     required String name,
//     required String url,
//     required double tax,
//     required int shippingCharges,
//     required int exchangeRate,
//     required String currency,
//     required int qty,
//     required int price,
//     required String shipMode,
//     required List<dynamic> servicesExtra,
//     required String saleId,
//     required int bids,
//     required String endTime,
//     required List<String> images,
//   });
//
//   Future<APIResponse<List<CartRes>>> getCart();
//
//   Future<APIResponse<List<CartRes>>> getCartForReview();
//
//   Future<APIResponse<List<QuotePriceCheckRes>>> checkCartBeforePayment(
//       {required QuoteBeforePaymentReq quoteBeforePaymentReq});
//
//   Future<APIResponse<CartAddRes>> addCart({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String url,
//     required int price,
//     required String currency,
//     required int qty,
//     required int? exactQty,
//     required String shipMode,
//     required String description,
//     required List<String> images,
//   });
//
//   Future<APIResponse<CartAddRes>> addCartForReview({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String url,
//     required int price,
//     required String currency,
//     required int qty,
//     required int? exactQty,
//     required String shipMode,
//     required String description,
//     required List<String> images,
//   });
//
//   Future<APIResponse<CartRemoveRes>> removeCart({
//     required List<String> ids,
//   });
//
//   Future<APIResponse> deleteProductsFavorite(
//       {List<String> ids = const [], bool isClearExpired = false});
//
//   Future<APIResponse> deleteStoresFavorite({
//     required List<String> ids,
//   });
//
//   Future<APIResponse> saveNotificationSetting({
//     required NotificationTypeSettingRes notificationRes,
//   });
//
//   Future<APIResponse<List<AddressRes>>> getAddress();
//
//   Future<APIResponse> deleteAddress({required String id});
//
//   Future<APIResponse<BidCartRes>> getBidCart();
//
//   Future<APIResponse<OrderRes>> getOrderTrackingInfo({required String id});
//
//   Future<APIResponse<List<PacketRes>>> getPacket(
//       {required String route, required String mode});
//
//   Future<APIResponse<List<CouponResultRes>>> getCoupon();
//
//   Future<APIOrderResponse> getListOrderManager({
//     String? search,
//     required int page,
//     String? sort,
//     required int step,
//     bool? all,
//     String? order,
//     DateTime? endDate,
//     DateTime? startDate,
//   });
//
//   Future<APIResponse<List<PaymentRes>>> payment(
//       {required PaymentRequest paymentRequest});
//
//   Future<APIResponse<List<PaymentRes>>> quotePayment(
//       {required QuotePaymentReq quotePaymentRequest});
//
//   Future<APIResponse> negotiationQuote({required QuoteReq quoteReq});
//
//   Future<APIResponse<InvoiceResultsRes>> getInvoice({
//     required int page,
//     String? search,
//     int? size,
//     required String from,
//     required String to,
//     required String? status,
//     String? sort,
//     bool? all,
//   });
//
//   Future<APIResponse> uploadFile({
//     required File file,
//     required String type,
//   });
//
//   Future<APIResponse<NotificationResultsRes>> getNotificationsSystem(
//       {required int page, bool? read});
//
//   Future<APIResponse> makeReadNotification({String? id, bool all = false});
//
//   Future<APIResponse<EventRes>> getDetailEvent({required String slug});
//
//   Future<APIResponse> updateUserInfo(
//       {required String birthDay,
//       required String fullName,
//       required String gender,
//       required String id,
//       required String shortName});
//
//   Future<APIResponse> changePass({
//     required String oldPass,
//     required String newPass,
//   });
//
//   Future<APIResponse<ProductDescriptionRes>> getEbayProductDescription({required String code});
//
//   Future<APIResponse<List<ProvinceRes>>> getListProvince();
//
//   Future<APIResponse<List<DistrictRes>>> getListDistrict(
//       {required String provinceId});
//
//   Future<APIResponse<List<WardsRes>>> getListWards(
//       {required String districtId});
//
//   Future<APIResponse> addAddress(
//       {required AddressDeliveryReq addressDeliveryReq});
//
//   Future<APIResponse> updateAddress(
//       {required String addressId,
//       required AddressDeliveryReq addressDeliveryReq});
//
//   Future<APIResponse> getHtmlToPrint({required String invoiceId});
//
//   Future<APIResponse<TransitResultRes>> getTransit({
//     required int page,
//     String? search,
//     required int size,
//     required String from,
//     required String to,
//     int? step,
//     String? sort,
//     String? order,
//   });
//
//   Future<APIResponse<RouteCodeResResult>> getRouteCode();
//
//   Future<APIResponse<GroupProductResResult>> getGroupProduct();
//
//   Future<APIResponse<List<GroupPriceRes>>> getGroupPrice();
//
//   Future<APIResponse<List<EstimateRes>>> calculatorEstimate({
//     required String currency,
//     required String exchangeRate,
//     required String goodValue,
//     required String groupCode,
//     required String weight,
//     required String width,
//     required String height,
//     required String length,
//     required String routeCode,
//   });
//
//   Future<APIResponse<PriceCalculationRes>> priceCaculation({
//     required PriceCalculationReq priceCalculationReq,
//   });
//
//   Future<APIResponse> cancelTransit({
//     required String note,
//     required String id,
//   });
//
//   Future<APIResponse<GTSInfoRes>> getGTSInfo();
//
//   Future<APIResponse<TransferResultRes>> getListTransferHis(
//       {required int page, String? search, String? status});
//
//   Future<APIResponse<TransactionResultRes>> getListTransaction(
//       {required int page, String? search, String? transType});
//
//   Future<APIResponse<List<VipRes>>> getListVip();
//
//   Future<APIResponse> upgradeVip({required String code});
//
//   Future<APIResponse> cancelVip({required String userId});
//
//   Future<APIResponse> activateVip({required String code});
//
//   Future<APIResponse> createTransit(
//       {required CreateTransitReq createTransitReq});
//
//   Future<APIResponse<List<VoucherResult>>> getVoucherResult({
//     String? search,
//     required String status,
//   });
//
//   Future<APIResponse> saveVoucher({required String code});
//
//   Future<APIResponse<BankCardResultRes>> getBankCard();
//
//   Future<APIResponse<List<Bank>>> getListBank();
//
//   Future<APIResponse> orderRefund(
//       {required int amount,
//       required String bankCode,
//       required String cardName,
//       required String cardNo,
//       required String password});
//
//   Future<APIResponse<InvoiceRes>> getInvoiceDetail(
//       {required String invoiceCode});
//
//   Future<APIResponse<FeedbackResultRes>> getFeedback({
//     required int page,
//     int size = 20,
//     required int status,
//     int? type,
//     String? priority,
//     String? search,
//     required String toDate,
//     required String fromDate,
//   });
//
//   Future<APIResponse> complaint({
//     required int type,
//     required String priority,
//     String? codes,
//     required String content,
//     required String mode,
//     required String title,
//   });
//
//   Future<APIResponse<CommentResultRes>> getComment({
//     required int page,
//     int size = 20,
//     required String feedbackId,
//   });
//
//   Future<APIResponse> addComment({
//     required String feedbackId,
//     required String content,
//   });
//
//   Future<APIResponse> requestComment({
//     required String link,
//     required String comment,
//     required String shipping,
//     required List<String> extra_services
//   });
//
//   Future<APIResponse<List<CommentUserRequestStatus>>> requestUserCommentStatus(
//       {required String id});
//
//   Future<APIResponse<CommentRes>> getDetailFeedback(
//       {required String idFeedback});
//
//   Future<APIResponse<ConfigStoreRes>> getConfigStoreReview();
//
//   Future<APIResponse> deleteAccount();
//
//   Future<APIResponse<List<ProductDetailRes>>> getProductsForReview();
//
//   Future<APIResponse<ProductDetailRes>> getProductDetailForReview(
//       {required String site, required String code});
//
//   Future<APIResponse<SaleReviewRes>> getSaleReview(
//       {String? sort, String? order});
//
//   Future<APIResponse> reviewSale({
//     required String avatar,
//     required String saleId,
//     required String userName,
//     required num ratingStar,
//     required String content,
//     required String userId,
//   });
//
//   Future<APIResponse> changeConsultant({required String content});
//
//   Future<APIResponse<List<WarehouseRes>>> getWarehouse({required String route});
//
//   Future<APIResponse<PaymentGatewaysRes>> getUserPaymentGateway();
//
//   Future<APIResponse<QrInfoRes>> getQRByCardId({
//     required String id,
//     required num amount,
//   });
//
//   Future<APIResponse<PaymeTransactionRes>> createPaymeTransaction({
//     required num amount,
//   });
//
//   Future<APIResponse<BillSettlementRes>> getUserBill({
//     required String id,
//   });
//
//   Future<APIResponse> payUserBill({
//     required AddressRes address,
//     required String billId,
//   });
//
//   Future<APIResponse<MercariBidInfoRes>> getBidProductInfoByCode({
//     required String code,
//   });
//
//   Future<APIResponse> mercariBid({
//     required String link,
//     required String mode,
//     required String note,
//     required num price,
//     required String shipMode,
//     required List<String> serviceExtra,
//   });
//
//   Future<APIResponse> updateMercariBid({
//     required String id,
//     required num price,
//   });
// }
//
// class MainRepositoryImpl extends MainRepository {
//   ApiClient apiClient = ApiUtil.apiClient;
//
//   @override
//   Future<APIResponse<List<BannerRes>>> getBanners(
//       {required String type, required String sideCode}) {
//     return apiClient.getBanners(type, sideCode, 1, 100, true);
//   }
//
//   @override
//   Future<APIResponse<List<CategoryRes>>> getCategories({
//     required String typeCode,
//     int? parentCode,
//     bool? children,
//   }) {
//     return apiClient.getCategories(
//         siteCode: typeCode,
//         site: typeCode,
//         parentCode: parentCode,
//         children: children);
//   }
//
//   @override
//   Future<APIResponse<BrandResultsRes>> getListBrand(
//       {required String siteCode}) {
//     return apiClient.getListBrand(siteCode: siteCode, primary: true);
//   }
//
//   @override
//   Future<APIResponse<BrandResultsRes>> getListPopularWebsite() {
//     return apiClient.getListPopularWebsite();
//   }
//
//   @override
//   Future<APIResponse<SellerResultRes>> getListSellerOutstanding(
//       {required String siteCode}) {
//     return apiClient.getListSellerOutstanding(siteCode: siteCode);
//   }
//
//   @override
//   Future<APIResponse<SellerResultRes>> getListFavoriteSeller(
//       {String? site, String? search, String? sort, int? page, int? size}) {
//     return apiClient.getListFavoriteSeller(
//         sort: sort, site: site, search: search, page: page, size: size);
//   }
//
//   @override
//   Future<APIResponse<List<TopSearchRes>>> getListTopSearch(
//       {required String typeCode}) {
//     return apiClient.getListTopSearch(typeCode: typeCode, size: 10, page: 1);
//   }
//
//   @override
//   Future<APIResponse<List<CurrencyExchangeRes>>> getCurrencyExchange() {
//     return apiClient.getCurrencyExchange();
//   }
//
//   @override
//   Future<APIResponse<RecommendProductRes>> getRecommendProductAuction(
//       {required int page}) {
//     return apiClient.getRecommendProductAuction(page: page);
//   }
//
//   @override
//   Future<APIResponse<RecommendProductRes>> getRecommendProductShopping(
//       {required int page}) {
//     return apiClient.getRecommendProductShopping(page: page);
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getRecommendProductRakuten(
//       {required int page}) {
//     return apiClient.getRecommendProductRakuten(page: page);
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getRecommendProductMercari() {
//     return apiClient.getRecommendProductMercari();
//   }
//
//   @override
//   Future<APIResponse<List<CommentDeal>>> getCommentDeal() {
//     return apiClient.getCommentDeal();
//   }
//
//   @override
//   Future<APIResponse<List<CommentExample>>> getCommentExample() {
//     return apiClient.getCommentExample();
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getRecommendProductPaypay() {
//     return apiClient.getRecommendProductPaypay();
//   }
//
//   @override
//   Future<APIResponse<List<SiteKeywordRes>>> getSiteKeyword(
//       {required String typeCode, required int page, required int size}) {
//     return apiClient.getSiteKeyword(typeCode: typeCode, size: size, page: page);
//   }
//
//   @override
//   Future<APIResponse<List<SiteKeywordRes>>> getSiteKeywordAutoComplete(
//       {required String site, required String search}) {
//     return apiClient.getSiteKeywordAutoComplete(site: site, search: search);
//   }
//
//   @override
//   Future<APIResponse<RecommendProductRes>> getListProductFavorite(
//       {String? site, String? search, String? sort, int? page, int? size}) {
//     return apiClient.getListProductFavorite(
//         site: site, search: search, sort: sort, page: page, size: size);
//   }
//
//   @override
//   Future<APIResponse> makeFavoriteProduct({required ProductEntity productRes}) {
//     final body = {
//       "site_code": productRes.tradingOption.typeCode,
//       "code": productRes.code,
//       "name": productRes.productName,
//       "url": productRes.url,
//       "price": productRes.price,
//
//       ///customer request
//       "currency": productRes.currency ?? 'JPY',
//       "end_time": productRes.endTime?.toIso8601String(),
//       "images": [productRes.urlImage]
//     };
//     return apiClient.makeFavoriteProduct(body);
//   }
//
//   @override
//   Future<APIResponse> makeFavoriteSeller({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String image,
//     required String remark,
//   }) {
//     final body = {
//       "site_code": siteCode,
//       "code": code,
//       "name": name,
//       "image": image,
//       "remark": remark,
//       "description": "",
//     };
//     return apiClient.makeFavoriteSeller(body);
//   }
//
//   @override
//   Future<APIResponse<EventResultsRes>> getListEvent(
//       {required int page,
//       required int size,
//       bool? isPublic,
//       String? typeMode,
//       bool? status}) {
//     return apiClient.getListEvent(
//       page: page,
//       size: size,
//       isPublic: isPublic,
//       typeMode: typeMode,
//       status: status,
//     );
//   }
//
//   @override
//   Future<APIResponse<UserInfoRes>> getUserInfo() {
//     return apiClient.getUserInfo();
//   }
//
//   @override
//   Future<APIResponse<ProductDetailRes>> getProductDetail(
//       {required String typeCode, required String id, String? userId}) {
//     return apiClient.getProductDetail(
//         ecommerce: typeCode, productId: id, userId: userId);
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getRelateProductsAuction(
//       {required String id}) {
//     return apiClient.getRelateProductsAuction(id: id);
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getRelateProductsMercari(
//       {required String id}) {
//     return apiClient.getRelateProductsMercari(id: id);
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getRelateProductsPayPay({
//     required String id,
//     required String code,
//     required String categoryPath,
//     required String title,
//   }) {
//     return apiClient.getRelateProductsPayPay(
//       id: id,
//       code: code,
//       categoryPath: categoryPath,
//       title: title,
//     );
//   }
//
//   @override
//   Future<APIResponse<ProductsShoppingRes>> getRelateProductsShopping({
//     required String code,
//     required String sellerId,
//   }) {
//     return apiClient.getRelateProductsShopping(
//       code: code,
//       sellerId: sellerId,
//     );
//   }
//
//   @override
//   Future<APIResponse> getShippingFee({required String id}) {
//     return apiClient.getShippingFee(id: id);
//   }
//
//   @override
//   Future<APIResponse<SellerInfoDetailRes>> getSellerInfo({
//     required String sellerId,
//     required String ecommerce,
//   }) {
//     return apiClient.getSellerInfo(
//       ecommerce: ecommerce,
//       sellerId: sellerId,
//     );
//   }
//
//   @override
//   Future<APIResponse<List<BidderHistoryRes>>> getListBidder(
//       {required String productId}) {
//     return apiClient.getListBidder(productId: productId);
//   }
//
//   Future<APIResponse> getProductQuoteSearch({required String productLink}) {
//     return apiClient.getProductQuoteSearch(productLink: productLink);
//   }
//
//   @override
//   Future<APIResponse> sendQuote({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String url,
//     required num price,
//     required String currency,
//     required String sku,
//     required List<String> images,
//     required String description,
//     required String customerName,
//     required String customerPhone,
//     required String customerEmail,
//     required String customerAddress,
//   }) {
//     final body = {
//       'site_code': siteCode,
//       'code': code,
//       "name": name,
//       'url': url,
//       'price': price,
//       'currency': currency,
//       'sku': sku,
//       "images": images,
//       "description": description,
//       "customer_name": customerName,
//       "customer_phone": customerPhone,
//       "customer_email": customerEmail,
//       "customer_address": customerAddress,
//     };
//     return apiClient.sendQuote(body);
//   }
//
//   Future<APIResponse> sendProductQuote({
//     required String link,
//     required String name,
//     required num originPrice,
//     required String imageRoot,
//     required List<String> images,
//     required String routeCode,
//     required String note,
//     required String currency,
//     required String shipMode,
//     required num price,
//     required num qty,
//     required num weight,
//     required num quality,
//     required num goodsValues,
//     required num exchangeRate,
//   }) {
//     final body = {
//       "name": name,
//       'link': link,
//       'origin_price': originPrice,
//       'image_root': imageRoot,
//       "images": images,
//       'route_code': routeCode,
//       'note': note,
//       'price': price,
//       'ship_mode': shipMode,
//       'currency': currency,
//       'qty': qty,
//       "weight": weight,
//       "quality": quality,
//       "goods_values": goodsValues,
//       "exchange_rate": exchangeRate,
//     };
//     return apiClient.sendProductQuote(body);
//   }
//
//   @override
//   Future<APIResponse<AuctionRes>> auction({
//     required String mode,
//     required String sellerId,
//     required String code,
//     required String name,
//     required String url,
//     required double tax,
//     required int shippingCharges,
//     required int exchangeRate,
//     required String currency,
//     required int qty,
//     required int price,
//     required String shipMode,
//     required List<dynamic> servicesExtra,
//     required String saleId,
//     required int bids,
//     required String endTime,
//     required List<String> images,
//     required double weight,
//   }) {
//     final body = {
//       "mode": mode,
//       "seller_id": sellerId,
//       "code": code,
//       "name": name,
//       "url": url,
//       "tax": tax,
//       "shipping_charges": shippingCharges,
//       "exchange_rate": exchangeRate,
//       "currency": currency,
//       "qty": qty,
//       "price": price,
//       "ship_mode": shipMode,
//       "services_extra": servicesExtra,
//       "sale_id": saleId,
//       "bids": bids,
//       "end_time": endTime,
//       "images": images,
//       "weight": weight,
//     };
//     return apiClient.auction(body);
//   }
//
//   @override
//   Future<APIResponse<ProductSearchResultRes>> getAuctionProductSearching({
//     required String keyword,
//     required int page,
//     int? categoryId,
//     required String ranking,
//     String? sort,
//     String? order,
//     int? itemStatus,
//     int? store,
//     required num aucMinBidOrBuyPrice,
//     required num aucMaxBidOrBuyPrice,
//     required num aucMinPrice,
//     required num aucMaxPrice,
//     String? option,
//     int? newly,
//     required int fixed,
//   }) {
//     return apiClient.getAuctionProductSearching(
//       keyword: keyword,
//       page: page,
//       itemStatus: itemStatus,
//       store: store,
//       option: option == 'null' ? null : option,
//       categoryId: categoryId == 'null' ? null : categoryId,
//       ranking: ranking,
//       sort: sort == 'null' ? null : sort,
//       order: order == 'null' ? null : order,
//       aucMinBidOrBuyPrice: aucMinBidOrBuyPrice,
//       aucMaxBidOrBuyPrice: aucMaxBidOrBuyPrice,
//       aucMinPrice: aucMinPrice,
//       aucMaxPrice: aucMaxPrice,
//       newly: newly == 'null' ? null : newly,
//       fixed: fixed,
//     );
//   }
//
//   @override
//   Future<APIResponse<SnipeRes>> snipe({
//     required String mode,
//     required String sellerId,
//     required String code,
//     required String name,
//     required String url,
//     required double tax,
//     required int shippingCharges,
//     required int exchangeRate,
//     required String currency,
//     required int qty,
//     required int price,
//     required String shipMode,
//     required List<dynamic> servicesExtra,
//     required String saleId,
//     required int bids,
//     required String endTime,
//     required List<String> images,
//     required double weight,
//   }) {
//     final body = {
//       "mode": mode,
//       "seller_id": sellerId,
//       "code": code,
//       "name": name,
//       "url": url,
//       "tax": tax,
//       "shipping_charges": shippingCharges,
//       "exchange_rate": exchangeRate,
//       "currency": currency,
//       "qty": qty,
//       "price": price,
//       "ship_mode": shipMode,
//       "services_extra": servicesExtra,
//       "sale_id": saleId,
//       "bids": bids,
//       "end_time": endTime,
//       "images": images,
//       "weight": weight,
//     };
//     return apiClient.snipe(body);
//   }
//
//   @override
//   Future<APIResponse<ProductSearchResultRes>> getShoppingProductSearching({
//     required String keyword,
//     required int page,
//     required int size,
//     String? sort,
//     int? itemStatus,
//     required int priceFrom,
//     required int priceTo,
//     int? categoryId,
//     String? sellerId,
//   }) {
//     return apiClient.getShoppingProductSearching(
//       keyword: keyword,
//       page: page,
//       size: size,
//       priceFrom: priceFrom,
//       priceTo: priceTo,
//       sort: sort,
//       itemStatus: itemStatus,
//       categoryId: categoryId,
//       sellerId: sellerId,
//     );
//   }
//
//   @override
//   Future<APIResponse<ProductSearchResultRes>> getPayPayProductSearching(
//       {required String keyword,
//       required int page,
//       String? sort,
//       String? spec,
//       String? status,
//       required int priceMin,
//       required int priceMax}) {
//     return apiClient.getPayPayProductSearching(
//         keyword: keyword,
//         page: page,
//         priceMin: priceMin,
//         priceMax: priceMax,
//         sort: sort,
//         spec: spec,
//         status: status);
//   }
//
//   @override
//   Future<APIResponse<ProductSearchResultRes>> getMercariProductSearching({
//     required String keyword,
//     String? conditions,
//     String? shippings,
//     String? methods,
//     String? status,
//     required int priceMin,
//     required int priceMax,
//     String? sortOrder,
//     String? sort,
//     String? order,
//     String? pageToken,
//     int? categoryId,
//   }) {
//     return apiClient.getMercariProductSearching(
//       keyword: keyword,
//       priceMin: priceMin,
//       priceMax: priceMax,
//       conditions: conditions,
//       shippings: shippings,
//       methods: methods,
//       status: status,
//       sortOrder: sortOrder,
//       sort: sort,
//       order: order,
//       pageToken: pageToken,
//       categoryId: categoryId,
//     );
//   }
//
//   @override
//   Future<APIResponse<ProductSearchResultRes>> getRakutenProductSearching(
//       {required String keyword,
//       required int minPrice,
//       required int maxPrice,
//       required int page,
//       required int size,
//       String? sort,
//       int? categoryId}) {
//     return apiClient.getRakutenProductSearching(
//         keyword: keyword,
//         minPrice: minPrice,
//         maxPrice: maxPrice,
//         page: page,
//         size: size,
//         sort: sort,
//         categoryId: categoryId);
//   }
//
//   @override
//   Future<APIResponse<BidPriceRes>> getBidPrice({required String id}) {
//     return apiClient.getBidPrice(id: id);
//   }
//
//   @override
//   Future<APIResponse<BidStatusRes>> getBidStatus({required String code}) {
//     return apiClient.getBidStatus(code: code);
//   }
//
//   @override
//   Future<APIResponse<BidResultsRes>> getBidResults({
//     String? search,
//     required int page,
//     required String sort,
//     required String time,
//     String? mode,
//     bool? all,
//     required String order,
//     required String to,
//     required String from,
//   }) {
//     return apiClient.getBidResults(
//       search: search,
//       page: page,
//       sort: sort,
//       time: time,
//       mode: mode,
//       all: all,
//       order: order,
//       to: to,
//       from: from,
//     );
//   }
//
//   @override
//   Future<APIResponse<BidResultsRes>> getMercariBidResults({
//     String? search,
//     required int page,
//     required String sort,
//     required String time,
//     String? mode,
//     bool? all,
//     required String order,
//     required String to,
//     required String from,
//   }) {
//     return apiClient.getMercariBidResults(
//       search: search,
//       page: page,
//       sort: sort,
//       time: time,
//       mode: mode,
//       all: all,
//       order: order,
//       to: to,
//       from: from,
//     );
//   }
//
//   @override
//   Future<APIResponse> cancelAuction({required List<String> ids}) {
//     final body = {"ids": ids};
//     return apiClient.cancelAuction(body);
//   }
//
//   @override
//   Future<APIResponse<ProductDescriptionRes>> getEbayProductDescription({required String code}) {
//     return apiClient.getEbayProductDescription(code: code);
//   }
//
//   @override
//   Future<APIResponse<ProductSearchResultRes>> getProductOfSeller(
//       {required String sellerId,
//       required String keyword,
//       required int page,
//       int? categoryId,
//       String? sort,
//       String? order,
//       int? itemStatus,
//       int? store,
//       required num aucMinBidOrBuyPrice,
//       required num aucMaxBidOrBuyPrice,
//       required num aucMinPrice,
//       required num aucMaxPrice,
//       int? newly}) {
//     return apiClient.getProductOfSeller(
//       sellerId: sellerId,
//       keyword: keyword,
//       page: page,
//       itemStatus: itemStatus,
//       store: store,
//       categoryId: categoryId,
//       sort: sort,
//       order: order,
//       aucMinBidOrBuyPrice: aucMinBidOrBuyPrice,
//       aucMaxBidOrBuyPrice: aucMaxBidOrBuyPrice,
//       aucMinPrice: aucMinPrice,
//       aucMaxPrice: aucMaxPrice,
//       newly: newly,
//     );
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getProductOfSellerMercari(
//       {required String sellerId}) {
//     return apiClient.getProductOfSellerMercari(id: sellerId);
//   }
//
//   @override
//   Future<APIResponse<ProductSearchResultRes>> getProductOfSellerPaypay(
//       {required String sellerId}) {
//     return apiClient.getProductOfSellerPaypay(id: sellerId);
//   }
//
//   @override
//   Future<APIResponse<BuyRes>> buy(
//       {required String mode,
//       required String sellerId,
//       required String code,
//       required String name,
//       required String url,
//       required double tax,
//       required int shippingCharges,
//       required int exchangeRate,
//       required String currency,
//       required int qty,
//       required int price,
//       required String shipMode,
//       required List servicesExtra,
//       required String saleId,
//       required int bids,
//       required String endTime,
//       required List<String> images}) {
//     final body = {
//       "mode": mode,
//       "seller_id": sellerId,
//       "code": code,
//       "name": name,
//       "url": url,
//       "tax": tax,
//       "shipping_charges": shippingCharges,
//       "exchange_rate": exchangeRate,
//       "currency": currency,
//       "qty": qty,
//       "price": price,
//       "ship_mode": shipMode,
//       "services_extra": servicesExtra,
//       "sale_id": saleId,
//       "bids": bids,
//       "end_time": endTime,
//       "images": images,
//     };
//     return apiClient.buy(body);
//   }
//
//   @override
//   Future<APIResponse<List<CartRes>>> getCart() {
//     return apiClient.getCart();
//   }
//
//   @override
//   Future<APIResponse<List<CartRes>>> getCartForReview() {
//     return apiClient.getCartForReview();
//   }
//
//   @override
//   Future<APIResponse<List<QuotePriceCheckRes>>> checkCartBeforePayment(
//       {required QuoteBeforePaymentReq quoteBeforePaymentReq}) {
//     return apiClient.checkCartBeforePayment(quoteBeforePaymentReq.toJson());
//   }
//
//   @override
//   Future<APIResponse<CartAddRes>> addCart({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String url,
//     required int price,
//     required String currency,
//     required int qty,
//     required int? exactQty,
//     required String shipMode,
//     required String description,
//     required List<String> images,
//   }) {
//     final body = {
//       "site_code": siteCode,
//       "code": code,
//       "name": name,
//       "url": url,
//       "price": price,
//       "currency": currency,
//       "qty": qty,
//       "ship_mode": shipMode,
//       "description": description,
//       "images": images,
//       "exact_qty": exactQty,
//     };
//     return apiClient.addCart(body);
//   }
//
//   @override
//   Future<APIResponse<CartAddRes>> addCartForReview({
//     required String siteCode,
//     required String code,
//     required String name,
//     required String url,
//     required int price,
//     required String currency,
//     required int qty,
//     required int? exactQty,
//     required String shipMode,
//     required String description,
//     required List<String> images,
//   }) {
//     final body = {
//       "site_code": siteCode,
//       "code": code,
//       "name": name,
//       "url": url,
//       "price": price,
//       "currency": currency,
//       "qty": qty,
//       "ship_mode": shipMode,
//       "description": description,
//       "images": images,
//       "exact_qty": exactQty,
//     };
//     return apiClient.addCartForReview(body);
//   }
//
//   @override
//   Future<APIResponse<CartRemoveRes>> removeCart({required List<String> ids}) {
//     final body = {"ids": ids};
//     return apiClient.removeCart(body);
//   }
//
//   @override
//   Future<APIResponse> deleteProductsFavorite(
//       {List<String> ids = const [], bool isClearExpired = false}) {
//     Map<String, dynamic> body = {"ids": ids};
//     if (isClearExpired) {
//       body = {"all": "expired"};
//     }
//     return apiClient.deleteProductsFavorite(body);
//   }
//
//   @override
//   Future<APIResponse> deleteStoresFavorite({required List<String> ids}) {
//     final body = {"ids": ids};
//     return apiClient.deleteStoresFavorite(body);
//   }
//
//   @override
//   Future<APIResponse> saveNotificationSetting(
//       {required NotificationTypeSettingRes notificationRes}) {
//     return apiClient.saveNotificationSetting(notificationRes.toJson());
//   }
//
//   @override
//   Future<APIResponse<List<AddressRes>>> getAddress() {
//     return apiClient.getAddress();
//   }
//
//   @override
//   Future<APIResponse> deleteAddress({required String id}) {
//     return apiClient.deleteAddress(id: id);
//   }
//
//   @override
//   Future<APIResponse<BidCartRes>> getBidCart() {
//     return apiClient.getBidCart();
//   }
//
//   @override
//   Future<APIResponse<OrderRes>> getOrderTrackingInfo({required String id}) {
//     return apiClient.getOrderTrackingInfo(id: id);
//   }
//
//   @override
//   Future<APIResponse<List<PacketRes>>> getPacket(
//       {required String route, required String mode}) {
//     return apiClient.getPacket(route: route, mode: mode);
//   }
//
//   @override
//   Future<APIResponse<List<CouponResultRes>>> getCoupon() {
//     return apiClient.getCoupon();
//   }
//
//   @override
//   Future<APIOrderResponse> getListOrderManager({
//     String? search,
//     required int page,
//     String? sort,
//     required int step,
//     bool? all,
//     String? order,
//     DateTime? endDate,
//     DateTime? startDate,
//   }) {
//     return apiClient.getListOrderManager(
//         page: page,
//         search: search,
//         sort: sort,
//         step: step == 0 ? "all" : step.toString(),
//         all: all,
//         order: order,
//         to: endDate,
//         from: startDate);
//   }
//
//   @override
//   Future<APIResponse<List<PaymentRes>>> payment(
//       {required PaymentRequest paymentRequest}) {
//     final body = paymentRequest.toJson();
//     return apiClient.payment(body);
//   }
//
//   @override
//   Future<APIResponse<List<PaymentRes>>> quotePayment(
//       {required QuotePaymentReq quotePaymentRequest}) {
//     final body = quotePaymentRequest.toJson();
//     return apiClient.quotePayment(body);
//   }
//
//   @override
//   Future<APIResponse<InvoiceResultsRes>> getInvoice(
//       {required int page,
//       String? search,
//       required String from,
//       required String to,
//       required String? status,
//       String? sort,
//       bool? all,
//       int? size}) {
//     return apiClient.getInvoice(
//       page: page,
//       search: search,
//       from: from,
//       to: to,
//       status: status,
//       sort: sort,
//       all: all,
//       size: size ?? 20,
//     );
//   }
//
//   @override
//   Future<APIResponse> negotiationQuote({required QuoteReq quoteReq}) {
//     return apiClient.negotiationQuote(quoteReq.toJson());
//   }
//
//   @override
//   Future<APIResponse> uploadFile({
//     required File file,
//     required String type,
//   }) async {
//     return apiClient.uploadFile(file, type);
//   }
//
//   @override
//   Future<APIResponse<NotificationResultsRes>> getNotificationsSystem(
//       {required int page, bool? read}) {
//     return apiClient.getNotifications(page: page, read: read);
//   }
//
//   @override
//   Future<APIResponse> makeReadNotification({String? id, bool all = false}) {
//     final body = all == true
//         ? {"all": true}
//         : {
//             "ids": [id]
//           };
//     return apiClient.makeReadNotification(body);
//   }
//
//   @override
//   Future<APIResponse<EventRes>> getDetailEvent({required String slug}) {
//     return apiClient.getDetailEvent(slug: slug);
//   }
//
//   @override
//   Future<APIResponse> updateUserInfo(
//       {required String birthDay,
//       required String fullName,
//       required String gender,
//       required String id,
//       required String shortName}) {
//     final body = {
//       "birthdate": birthDay,
//       "full_name": fullName,
//       "gender": gender,
//       "id": id,
//       "short_name": shortName,
//     };
//     return apiClient.updateUserInfo(body);
//   }
//
//   @override
//   Future<APIResponse> changePass(
//       {required String oldPass, required String newPass}) {
//     final body = {
//       "confirmpassword": newPass,
//       "password": newPass,
//       "oldPassword": oldPass,
//     };
//     return apiClient.changePass(body);
//   }
//
//   @override
//   Future<APIResponse<List<ProvinceRes>>> getListProvince() {
//     return apiClient.getListProvince();
//   }
//
//   @override
//   Future<APIResponse<List<DistrictRes>>> getListDistrict(
//       {required String provinceId}) {
//     return apiClient.getListDistrict(provinceId: provinceId);
//   }
//
//   @override
//   Future<APIResponse<List<WardsRes>>> getListWards(
//       {required String districtId}) {
//     return apiClient.getListWards(districtId: districtId);
//   }
//
//   @override
//   Future<APIResponse> addAddress(
//       {required AddressDeliveryReq addressDeliveryReq}) {
//     return apiClient.addAddress(addressDeliveryReq.toJson());
//   }
//
//   @override
//   Future<APIResponse> updateAddress(
//       {required String addressId,
//       required AddressDeliveryReq addressDeliveryReq}) {
//     return apiClient.updateAddress(
//         idAddress: addressId, body: addressDeliveryReq.toJson());
//   }
//
//   @override
//   Future<APIResponse> getHtmlToPrint({required String invoiceId}) {
//     final body = {"id": invoiceId};
//     return apiClient.getHtmlToPrint(body);
//   }
//
//   @override
//   Future<APIResponse<TransitResultRes>> getTransit({
//     required int page,
//     String? search,
//     required int size,
//     required String from,
//     required String to,
//     int? step,
//     String? sort,
//     String? order,
//   }) {
//     return apiClient.getTransit(
//       page: page,
//       search: search,
//       from: from,
//       to: to,
//       step: step,
//       sort: sort,
//       size: size ?? 20,
//       order: order,
//     );
//   }
//
//   @override
//   Future<APIResponse<GroupProductResResult>> getGroupProduct() {
//     return apiClient.getGroupProduct();
//   }
//
//   @override
//   Future<APIResponse<List<GroupPriceRes>>> getGroupPrice() {
//     return apiClient.getGroupPrice();
//   }
//
//   @override
//   Future<APIResponse<RouteCodeResResult>> getRouteCode() {
//     return apiClient.getRouteCode();
//   }
//
//   @override
//   Future<APIResponse<List<EstimateRes>>> calculatorEstimate({
//     required String currency,
//     required String exchangeRate,
//     required String goodValue,
//     required String groupCode,
//     required String weight,
//     required String width,
//     required String height,
//     required String length,
//     required String routeCode,
//   }) {
//     final body = {
//       "currency": currency,
//       "exchange_rate": exchangeRate,
//       "goods_values": goodValue,
//       "group_code": groupCode,
//       "weight": weight,
//       "width": width,
//       "height": height,
//       "length": length,
//       "route_code": routeCode,
//       "level_code": 'ALL',
//       "mode": 'D',
//       "quality": '1',
//       "site_code": 'ALL',
//     };
//     return apiClient.calculatorEstimate(body);
//   }
//
//   Future<APIResponse<PriceCalculationRes>> priceCaculation({
//     required PriceCalculationReq priceCalculationReq,
//   }) {
//     return apiClient.priceCaculation(priceCalculationReq.toJson());
//   }
//
//   @override
//   Future<APIResponse> cancelTransit({
//     required String note,
//     required String id,
//   }) {
//     final body = {
//       "data": {'note': note},
//       "quote_id": id,
//     };
//     return apiClient.cancelTransit(body);
//   }
//
//   @override
//   Future<APIResponse<GTSInfoRes>> getGTSInfo() {
//     return apiClient.getGTSInfo();
//   }
//
//   @override
//   Future<APIResponse<TransferResultRes>> getListTransferHis(
//       {required int page, String? search, String? status}) {
//     return apiClient.getListTransferHis(
//         page: page, search: search, status: status);
//   }
//
//   @override
//   Future<APIResponse<TransactionResultRes>> getListTransaction(
//       {required int page, String? search, String? transType}) {
//     return apiClient.getListTransaction(
//         page: page, search: search, transType: transType);
//   }
//
//   @override
//   Future<APIResponse<List<VipRes>>> getListVip() {
//     return apiClient.getListVip();
//   }
//
//   @override
//   Future<APIResponse> upgradeVip({required String code}) {
//     final body = {
//       "code": code,
//       "update": true,
//     };
//     return apiClient.upgradeVip(body);
//   }
//
//   @override
//   Future<APIResponse> cancelVip({required String userId}) {
//     final body = {
//       "user_id": userId,
//     };
//     return apiClient.cancelVip(body);
//   }
//
//   @override
//   Future<APIResponse> activateVip({required String code}) {
//     final body = {
//       "code": code,
//       "update": false,
//     };
//     return apiClient.activateVip(body);
//   }
//
//   @override
//   Future<APIResponse> createTransit(
//       {required CreateTransitReq createTransitReq}) {
//     return apiClient.createTransit(createTransitReq.toJson());
//   }
//
//   @override
//   Future<APIResponse<List<VoucherResult>>> getVoucherResult({
//     String? search,
//     required String status,
//   }) {
//     return apiClient.getVoucherResult(status: status, search: search);
//   }
//
//   @override
//   Future<APIResponse> saveVoucher({required String code}) {
//     final body = {
//       "code": code,
//     };
//     return apiClient.saveVoucher(body);
//   }
//
//   @override
//   Future<APIResponse<BankCardResultRes>> getBankCard() {
//     return apiClient.getBankCard();
//   }
//
//   @override
//   Future<APIResponse<List<Bank>>> getListBank() {
//     return apiClient.getListBank();
//   }
//
//   @override
//   Future<APIResponse> orderRefund(
//       {required int amount,
//       required String bankCode,
//       required String cardName,
//       required String cardNo,
//       required String password}) {
//     final body = {
//       "amount": amount,
//       "bank_code": bankCode,
//       "card_name": cardName,
//       "card_no": cardNo,
//       "password": password,
//     };
//     return apiClient.orderRefund(body);
//   }
//
//   @override
//   Future<APIResponse<InvoiceRes>> getInvoiceDetail(
//       {required String invoiceCode}) {
//     return apiClient.getInvoiceDetail(invoiceId: invoiceCode);
//   }
//
//   @override
//   Future<APIResponse<FeedbackResultRes>> getFeedback({
//     required int page,
//     int size = 20,
//     required int status,
//     int? type,
//     String? priority,
//     String? search,
//     required String toDate,
//     required String fromDate,
//   }) {
//     return apiClient.getFeedback(
//       page: page,
//       size: size,
//       status: status,
//       type: type,
//       priority: priority,
//       search: search,
//       toDate: toDate,
//       fromDate: fromDate,
//     );
//   }
//
//   @override
//   Future<APIResponse> complaint({
//     required int type,
//     required String priority,
//     String? codes,
//     required String content,
//     required String mode,
//     required String title,
//   }) {
//     final body = {
//       "type": type,
//       "priority": priority,
//       "codes": codes,
//       "content": content,
//       "mode": mode,
//       "title": title,
//     };
//     return apiClient.complaint(body);
//   }
//
//   @override
//   Future<APIResponse> addComment({
//     required String feedbackId,
//     required String content,
//   }) {
//     final body = {
//       "doc_id": feedbackId,
//       "content": content,
//       "show": true,
//       "parent_id": null,
//     };
//     return apiClient.addComment(body);
//   }
//
//   Future<APIResponse> requestComment({
//     required String link,
//     required String comment,
//     required String shipping,
//     required List<String> extra_services
//   }){
//     final body = {
//       "link": link,
//       "comment": comment,
//       "shipping": shipping,
//       "extra_services": extra_services,
//     };
//     return apiClient.requestComment(body);
//   }
//
//   @override
//   Future<APIResponse<CommentResultRes>> getComment({
//     required int page,
//     int size = 20,
//     required String feedbackId,
//   }) {
//     return apiClient.getComment(
//       page: page,
//       size: size,
//       feedbackId: feedbackId,
//     );
//   }
//
//   @override
//   Future<APIResponse<CommentRes>> getDetailFeedback(
//       {required String idFeedback}) {
//     return apiClient.getDetailFeedback(idFeedback: idFeedback);
//   }
//
//   Future<APIResponse<List<CommentUserRequestStatus>>> requestUserCommentStatus(
//       {required String id}){
//         return apiClient.requestUserCommentStatus(id: id);
//       }
//
//   @override
//   Future<APIResponse<ConfigStoreRes>> getConfigStoreReview() {
//     return apiClient.getConfigStoreReview();
//   }
//
//   @override
//   Future<APIResponse> deleteAccount() {
//     return apiClient.deleteAccount();
//   }
//
//   @override
//   Future<APIResponse<List<ProductDetailRes>>> getProductsForReview() {
//     return apiClient.getProductsForReview();
//   }
//
//   @override
//   Future<APIResponse<ProductDetailRes>> getProductDetailForReview(
//       {required String site, required String code}) {
//     return apiClient.getProductDetailForReview(site: site, code: code);
//   }
//
//   @override
//   Future<APIResponse<SaleReviewRes>> getSaleReview(
//       {String? sort, String? order}) {
//     return apiClient.getSaleReview(sort: sort, order: order);
//   }
//
//   @override
//   Future<APIResponse> reviewSale({
//     required String avatar,
//     required String saleId,
//     required String userName,
//     required num ratingStar,
//     required String content,
//     required String userId,
//   }) {
//     final body = {
//       "avatar": avatar,
//       "item_id": saleId,
//       "name": userName,
//       "rating_star": ratingStar,
//       "content": content,
//       "title": "Đánh giá nhân viên tư vấn",
//       "type": 'sale',
//       "user_id": userId
//     };
//     return apiClient.reviewSale(body);
//   }
//
//   @override
//   Future<APIResponse> changeConsultant({required String content}) {
//     final body = {
//       "content": content,
//       "mode": "user",
//       "priority": "hight",
//       "status": "true",
//       "title": "Yêu cầu thay đổi nhân viên tư vấn",
//       "type": 12,
//     };
//     return apiClient.userFeedback(body);
//   }
//
//   @override
//   Future<APIResponse<List<WarehouseRes>>> getWarehouse(
//       {required String route}) {
//     return apiClient.getWarehouse(route: route);
//   }
//
//   Future<APIResponse<PaymentGatewaysRes>> getUserPaymentGateway(){
//     return apiClient.getUserPaymentGateway();
//   }
//
//   Future<APIResponse<QrInfoRes>> getQRByCardId({
//     required String id,
//     required num amount,
//   }){
//     final body = {
//       "id": id,
//       "amount": amount,
//     };
//     return apiClient.getQRByCardId(body);
//   }
//
//   Future<APIResponse<PaymeTransactionRes>> createPaymeTransaction({
//     required num amount,
//   }){
//     final body = {
//       "amount": amount,
//     };
//     return apiClient.createPaymeTransaction(body);
//   }
//
//   Future<APIResponse<BillSettlementRes>> getUserBill({
//     required String id,
//   }){
//     return apiClient.getUserBill(id: id);
//   }
//
//   Future<APIResponse> payUserBill({
//     required AddressRes address,
//     required String billId,
//   }){
//     final body = {
//       "id": billId,
//       "address": {
//         "address_id": address.id,
//         "name": address.address,
//         "phone": address.phone,
//         "email": address.email,
//         "address": address.address,
//         "province": address.province,
//         "district": address.district,
//         "ward": address.ward,
//         "address_type": address.type,
//       }
//     };
//     return apiClient.payUserBill(body);
//   }
//
//   Future<APIResponse<MercariBidInfoRes>> getBidProductInfoByCode({
//     required String code,
//   }){
//     return apiClient.getBidProductInfoByCode(code: code);
//   }
//
//   Future<APIResponse> mercariBid({
//     required String link,
//     required String mode,
//     required String note,
//     required num price,
//     required String shipMode,
//     required List<String> serviceExtra,
//   }){
//     final body = {
//       "link": link,
//       "mode": mode,
//       "note": note,
//       "price": price,
//       "ship_mode": shipMode,
//       "services_extra": serviceExtra,
//     };
//     return apiClient.mercariBid(body);
//   }
//
//   Future<APIResponse> updateMercariBid({
//     required String id,
//     required num price,
//   }){
//     final body = {
//       "id": id,
//       "price": price,
//     };
//     return apiClient.updateMrcariBid(body);
//   }
// }
