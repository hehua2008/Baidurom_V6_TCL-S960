.class public Lcom/android/jrdsettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final BUFFER_LENGTH:I = 0x28

.field private static final DEFAULT_WLAN_PROP:Ljava/lang/String; = "wifi-wapi"

.field private static final DHCP:I = 0x0

.field private static final IPV4_ADDRESS_LENGTH:I = 0x4

.field private static final IPV6_ADDRESS_LENGTH:I = 0x10

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field private static final MCC_SUB_BEG:I = 0x0

.field private static final MNC_SUB_BEG:I = 0x3

.field private static final MNC_SUB_END:I = 0x5

.field private static final PHASE2_PREFIX:Ljava/lang/String; = "auth="

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_STATIC:I = 0x1

.field private static final SIM_SLOT_1:I = 0x1

.field private static final SIM_SLOT_2:I = 0x2

.field private static final SSID_MAX_LEN:I = 0x20

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfigController"

.field private static final WAPI:Ljava/lang/String; = "wapi"

.field private static final WIFI:Ljava/lang/String; = "wifi"

.field public static final WIFI_EAP_METHOD_AKA:I = 0x4

.field public static final WIFI_EAP_METHOD_PEAP:I = 0x0

.field public static final WIFI_EAP_METHOD_PWD:I = 0x5

.field public static final WIFI_EAP_METHOD_SIM:I = 0x3

.field public static final WIFI_EAP_METHOD_TLS:I = 0x1

.field public static final WIFI_EAP_METHOD_TTLS:I = 0x2

.field private static final WIFI_WAPI:Ljava/lang/String; = "wifi-wapi"

.field private static final WLAN_PROP_KEY:Ljava/lang/String; = "persist.sys.wlan"


# instance fields
.field private final AP_SUPPORT_IPV6:Ljava/lang/String;

.field private final mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHex:Z

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSimSlot:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/TextView;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private final mView:Landroid/view/View;

.field private mWEPKeyIndex:Landroid/widget/Spinner;

.field private mWEPKeyType:Landroid/widget/Spinner;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiClientCert:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/jrdsettings/wifi/AccessPoint;Z)V
    .locals 25
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget-object v20, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 214
    sget-object v20, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 215
    new-instance v20, Landroid/net/LinkProperties;

    invoke-direct/range {v20 .. v20}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 226
    const-string v20, "ap.support.ipv6"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->AP_SUPPORT_IPV6:Ljava/lang/String;

    .line 247
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    .line 248
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 250
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 251
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 252
    if-nez p3, :cond_5

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 254
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEdit:Z

    .line 256
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 258
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 262
    .local v12, resources:Landroid/content/res/Resources;
    const-string v20, "phone"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mTm:Landroid/telephony/TelephonyManager;

    .line 263
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 269
    invoke-static {v5}, Lcom/android/jrdsettings/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/mediatek/settings/ext/IWifiExt;->setAPNetworkId(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 273
    const-string v20, "WifiConfigController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "priority="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/mediatek/settings/ext/IWifiExt;->setAPPriority(I)V

    .line 277
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 279
    .local v10, priorityLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/mediatek/settings/ext/IWifiExt;->getPriorityView()Landroid/view/View;

    move-result-object v11

    .line 280
    .local v11, priorityView:Landroid/view/View;
    if-eqz v11, :cond_1

    .line 281
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0293

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b028c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f09041c

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b026a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/mediatek/wifi/Utf8ByteLengthFilter;

    const/16 v24, 0x20

    invoke-direct/range {v23 .. v24}, Lcom/mediatek/wifi/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 303
    const v20, 0x7f0b0282

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 305
    .local v14, securityText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lcom/mediatek/settings/ext/IWifiExt;->setSecurityText(Landroid/widget/TextView;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b026f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b027b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0281

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 316
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v20, 0x7f0400f1

    const v21, 0x1020014

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a0015

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v3, v5, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 320
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 325
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    const v19, 0x7f0b026f

    .line 327
    .local v19, viewId:I
    const-string v20, "persist.sys.wlan"

    const-string v21, "wifi-wapi"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 329
    .local v18, type:Ljava/lang/String;
    const-string v20, "wifi-wapi"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 330
    invoke-static {}, Lcom/android/jrdsettings/wifi/AccessPoint;->isWFATestSupported()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 331
    const v19, 0x7f0b029a

    .line 357
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->switchWlanSecuritySpinner(Landroid/widget/Spinner;)V

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showProxyFields()V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a6

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a7

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090466

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 492
    .end local v14           #securityText:Landroid/widget/TextView;
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #viewId:I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090468

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 496
    :cond_4
    return-void

    .line 252
    .end local v5           #context:Landroid/content/Context;
    .end local v10           #priorityLayout:Landroid/widget/LinearLayout;
    .end local v11           #priorityView:Landroid/view/View;
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_5
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    move/from16 v20, v0

    goto/16 :goto_0

    .line 322
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #priorityLayout:Landroid/widget/LinearLayout;
    .restart local v11       #priorityView:Landroid/view/View;
    .restart local v12       #resources:Landroid/content/res/Resources;
    .restart local v14       #securityText:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b023a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 335
    .restart local v18       #type:Ljava/lang/String;
    .restart local v19       #viewId:I
    :cond_7
    const v19, 0x7f0b026f

    goto/16 :goto_2

    .line 337
    :cond_8
    const-string v20, "wifi"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 338
    invoke-static {}, Lcom/android/jrdsettings/wifi/AccessPoint;->isWFATestSupported()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 339
    const v19, 0x7f0b029c

    goto/16 :goto_2

    .line 343
    :cond_9
    const v19, 0x7f0b029b

    goto/16 :goto_2

    .line 345
    :cond_a
    const-string v20, "wapi"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 346
    const v19, 0x7f0b029d

    goto/16 :goto_2

    .line 369
    .end local v14           #securityText:Landroid/widget/TextView;
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #viewId:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0269

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 373
    .local v6, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    .line 374
    .local v17, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v17, :cond_c

    .line 375
    const v20, 0x7f09043d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/jrdsettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 379
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getLevel()I

    move-result v8

    .line 380
    .local v8, level:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_d

    .line 381
    const v20, 0x7f0a001b

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 382
    .local v16, signal:[Ljava/lang/String;
    const v20, 0x7f09043c

    aget-object v21, v16, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 385
    .end local v16           #signal:[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 387
    .local v7, info:Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x104059e

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, linkSpeedUnit:Ljava/lang/String;
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 389
    const v20, 0x7f09043e

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 394
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f0400ec

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 396
    .local v13, row:Landroid/view/View;
    const v20, 0x7f0b0099

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v21, v0

    const v22, 0x7f09043b

    invoke-interface/range {v21 .. v22}, Lcom/mediatek/settings/ext/IWifiExt;->getSecurityText(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v20, 0x7f0b0147

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/jrdsettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/mediatek/wifi/PasspointSettings;->shouldUpdate(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/jrdsettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/mediatek/settings/ext/IWifiExt;->shouldSetDisconnectButton()Z

    move-result v23

    invoke-static/range {v20 .. v23}, Lcom/mediatek/wifi/PasspointSettings;->addView(Lcom/android/jrdsettings/wifi/WifiConfigUiBase;Landroid/net/NetworkInfo$DetailedState;Landroid/view/View;Z)Z

    move-result v20

    if-nez v20, :cond_4

    .line 411
    :cond_10
    const-string v20, "dualsim.ui.support"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "true"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    const-string v20, "SIM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    const-string v20, "AKA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-nez v20, :cond_12

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "\"0\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 420
    const v20, 0x7f0900d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f0900da

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 427
    :cond_12
    :goto_4
    const/4 v15, 0x0

    .line 428
    .local v15, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 430
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 432
    const/4 v15, 0x1

    .line 438
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addIpAddressRows(Landroid/net/wifi/WifiConfiguration;Landroid/view/ViewGroup;)V

    .line 441
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 443
    const/4 v15, 0x1

    .line 449
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 450
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showProxyFields()V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a6

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a7

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    if-eqz v15, :cond_15

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a7

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090466

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 421
    .end local v15           #showAdvancedFields:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "\"1\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 422
    const v20, 0x7f0900d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f0900db

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 434
    .restart local v4       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v15       #showAdvancedFields:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsSpinner;->setSelection(I)V

    goto/16 :goto_5

    .line 445
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsSpinner;->setSelection(I)V

    goto/16 :goto_6

    .line 465
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b02a5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 473
    :cond_1a
    if-nez v17, :cond_1b

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_1b

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090462

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 483
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/mediatek/settings/ext/IWifiExt;->shouldAddForgetButton(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090464

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 476
    :cond_1b
    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/mediatek/settings/ext/IWifiExt;->shouldSetDisconnectButton()Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f0900e7

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 481
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0292

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private addIpAddressRows(Landroid/net/wifi/WifiConfiguration;Landroid/view/ViewGroup;)V
    .locals 21
    .parameter "config"
    .parameter "group"

    .prologue
    .line 1575
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WifiConfigController, config = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "config.linkProperties.getAddresses() is empty : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->isEmpty()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_9

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1579
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 1580
    .local v17, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    .line 1581
    .local v16, lastInfo:Landroid/net/wifi/WifiInfo;
    const/4 v6, -0x1

    .line 1582
    .local v6, currentConnNetworkId:I
    if-eqz v16, :cond_0

    .line 1583
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    .line 1585
    :cond_0
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "currentConnNetworkId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "config.networkId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v6, v0, :cond_6

    .line 1589
    invoke-static {}, Lcom/android/jrdsettings/Utils;->getWifiIpAddresses()Ljava/lang/String;

    move-result-object v10

    .line 1590
    .local v10, ipAddress:Ljava/lang/String;
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "the ipAddress is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    if-eqz v10, :cond_5

    .line 1592
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1593
    .local v11, ipAddresses:[Ljava/lang/String;
    array-length v12, v11

    .line 1595
    .local v12, ipAddressesLength:I
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ap.support.ipv6"

    const/16 v20, -0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1596
    .local v7, hasIpv6Address:I
    const/16 v18, 0x1

    aget-object v18, v11, v18

    const-string v19, "; "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1597
    .local v13, ipv6Addresses:[Ljava/lang/String;
    array-length v14, v13

    .line 1598
    .local v14, ipv6AddressesLength:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v12, :cond_9

    .line 1599
    aget-object v18, v11, v8

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1600
    const-string v18, "WifiConfigController"

    const-string v19, "ap support ipv4 only, hide ipv6 address!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const v18, 0x7f090138

    aget-object v19, v11, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 1598
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1604
    :cond_2
    const/16 v18, 0x1

    aget-object v18, v11, v18

    const-string v19, "; "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1605
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_1

    .line 1606
    const-string v18, "WifiConfigController"

    const-string v19, "only one static ipv6 address, ap does not support ipv6 or use static address assignment!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const v18, 0x7f090139

    const/16 v19, 0x1

    aget-object v19, v11, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_1

    .line 1610
    :cond_3
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    if-ge v15, v14, :cond_1

    .line 1611
    aget-object v18, v13, v15

    const-string v19, "fe80:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1612
    const-string v18, "WifiConfigController"

    const-string v19, "ap assign non-status ipv6 address, ignore!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1615
    :cond_4
    const-string v18, "WifiConfigController"

    const-string v19, "ap assign dhcp address!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const v18, 0x7f090139

    aget-object v19, v13, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_3

    .line 1623
    .end local v7           #hasIpv6Address:I
    .end local v8           #i:I
    .end local v11           #ipAddresses:[Ljava/lang/String;
    .end local v12           #ipAddressesLength:I
    .end local v13           #ipv6Addresses:[Ljava/lang/String;
    .end local v14           #ipv6AddressesLength:I
    .end local v15           #j:I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 1624
    .local v4, a:Ljava/net/InetAddress;
    const v18, 0x7f09043f

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 1629
    .end local v4           #a:Ljava/net/InetAddress;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #ipAddress:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 1630
    .restart local v4       #a:Ljava/net/InetAddress;
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HostAddress : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Address Length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1634
    const v18, 0x7f090138

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_5

    .line 1635
    :cond_8
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1638
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ap.support.ipv6"

    const/16 v20, -0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1639
    .restart local v7       #hasIpv6Address:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_7

    .line 1640
    const v18, 0x7f090139

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_5

    .line 1650
    .end local v4           #a:Ljava/net/InetAddress;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #currentConnNetworkId:I
    .end local v7           #hasIpv6Address:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v16           #lastInfo:Landroid/net/wifi/WifiInfo;
    .end local v17           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_9
    return-void
.end method

.method public static addQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ec

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 558
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 559
    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 561
    return-void
.end method

.method private eapSimAkaConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 1529
    const-string v1, "WifiConfigController"

    const-string v2, "mSimSlot is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    .line 1532
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1535
    .local v0, strSimAka:Ljava/lang/String;
    const-string v2, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "((String) mSimSlot.getSelectedItem()) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-direct {p0, p1, v0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->simSlotConfig(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 1538
    const-string v2, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eap-sim, choose sim_slot"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eap-sim, config.imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eap-sim, config.simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 809
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 810
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 814
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 815
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/jrdsettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 816
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 845
    .end local v6           #result:I
    :goto_1
    return v7

    .line 810
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 821
    :cond_1
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 825
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 826
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 830
    .local v3, port:I
    const/4 v6, 0x0

    .line 832
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 833
    invoke-static {v2, v4, v1}, Lcom/android/jrdsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 837
    :goto_3
    if-nez v6, :cond_4

    .line 838
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 840
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 845
    goto :goto_1

    .line 821
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 834
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0902db

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 842
    goto :goto_1
.end method

.method private isWEPKeyValid(Ljava/lang/String;)Z
    .locals 6
    .parameter "password"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 627
    :cond_1
    :goto_0
    return v2

    .line 613
    :cond_2
    const/4 v1, 0x0

    .line 614
    .local v1, keyType:I
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWEPKeyType:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWEPKeyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 616
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWEPKeyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 618
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 619
    .local v0, keyLength:I
    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    :cond_4
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 623
    :cond_5
    const/4 v4, 0x5

    if-eq v0, v4, :cond_6

    const/16 v4, 0xd

    if-eq v0, v4, :cond_6

    const/16 v4, 0x10

    if-ne v0, v4, :cond_7

    :cond_6
    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    :cond_7
    move v2, v3

    .line 627
    goto :goto_0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1334
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1335
    .local v3, context:Landroid/content/Context;
    const v5, 0x7f09044b

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1337
    .local v4, unspecified:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1338
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 1339
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v4, v2, v6

    .line 1347
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1349
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1351
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1352
    return-void

    .line 1341
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 1342
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v6

    .line 1343
    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    move-object v2, v1

    goto :goto_0
.end method

.method public static makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "simOperator"
    .parameter "imsi"
    .parameter "eapMethod"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 508
    if-nez p1, :cond_0

    .line 509
    const-string v1, "error"

    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    :goto_0
    return-object v1

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 514
    .local v0, NAI:Ljava/lang/StringBuffer;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 516
    const-string v1, "SIM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    const-string v1, "@wlan.mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOperator() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 529
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    :goto_2
    const-string v1, ".mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    const-string v1, ".3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    const-string v1, "WifiConfigController"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 518
    :cond_2
    const-string v1, "AKA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 532
    :cond_3
    const/4 v1, 0x6

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    if-nez p0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v5

    .line 233
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 234
    goto :goto_0

    .line 236
    :cond_2
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 237
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 238
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 239
    goto :goto_0

    .line 237
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 1355
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1358
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1361
    if-eqz p2, :cond_0

    .line 1363
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1365
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1366
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1367
    invoke-virtual {p1, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1372
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1365
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 13

    .prologue
    const v12, 0x7f0b0294

    const/4 v11, 0x0

    .line 1209
    const/4 v0, 0x0

    .line 1211
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0b0292

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 1215
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1218
    :cond_0
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1219
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v9, :cond_1

    .line 1221
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0b0295

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1222
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1223
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0b0296

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1224
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1225
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0b0297

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1227
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1228
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0b0298

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1229
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1230
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0b0299

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1231
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1233
    :cond_1
    if-eqz v0, :cond_8

    .line 1235
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1236
    .local v7, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1238
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 1240
    .local v6, linkAddress:Landroid/net/LinkAddress;
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IpAddressView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    .line 1242
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    .end local v6           #linkAddress:Landroid/net/LinkAddress;
    :cond_3
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 1251
    .local v8, route:Landroid/net/RouteInfo;
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RouteInfo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {v8}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_4

    .line 1253
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    .end local v8           #route:Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1261
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 1263
    .local v2, dsn1:Ljava/net/InetAddress;
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dsn1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    instance-of v9, v2, Ljava/net/Inet4Address;

    if-eqz v9, :cond_6

    .line 1265
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    .end local v2           #dsn1:Ljava/net/InetAddress;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1271
    .local v3, dsn2:Ljava/net/InetAddress;
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dsn2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    instance-of v9, v3, Ljava/net/Inet4Address;

    if-eqz v9, :cond_7

    .line 1273
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v3           #dsn2:Ljava/net/InetAddress;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v7           #linkProperties:Landroid/net/LinkProperties;
    :cond_8
    :goto_0
    return-void

    .line 1280
    :cond_9
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 9

    .prologue
    const v8, 0x7f0b028e

    const v7, 0x7f0b028d

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1285
    const/4 v0, 0x0

    .line 1287
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0b028a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1292
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1295
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1296
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1300
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0b028f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1302
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1303
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0b0290

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1304
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1305
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0b0291

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1307
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1310
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0b02b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1312
    .local v2, proxyText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v3, v2}, Lcom/mediatek/settings/ext/IWifiExt;->setProxyText(Landroid/widget/TextView;)V

    .line 1315
    .end local v2           #proxyText:Landroid/widget/TextView;
    :cond_1
    if-eqz v0, :cond_2

    .line 1316
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 1318
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_2

    .line 1319
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_2
    :goto_0
    return-void

    .line 1327
    :cond_3
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 23

    .prologue
    .line 935
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b027e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a2

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 962
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b027e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mHex:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 972
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 984
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b027e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a2

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a3

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a4

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "WAPIASCERT_"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "WAPIUSERCERT_"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 997
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "WAPIASCERT_"

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->ca_cert2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "WAPIUSERCERT_"

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a2

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b024e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0271

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x7f09044a

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setHint(I)V

    .line 1023
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0288

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0271

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0283

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b029e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1034
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0283

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b029e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a6

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1038
    .local v5, advancedView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v19

    if-nez v19, :cond_8

    .line 1039
    const-string v19, "WifiConfigController"

    const-string v20, "add network,Security is AccessPoint.SECURITY_EAP"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a6

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a7

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a7

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0284

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1057
    .local v7, context:Landroid/content/Context;
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a007b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v7, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1061
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v19, 0x1090009

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0285

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0286

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0287

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0288

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0289

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "CACERT_"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "USRPKEY_"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 1080
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1082
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v11

    .line 1083
    .local v11, phase2Method:Ljava/lang/String;
    if-eqz v11, :cond_c

    const-string v19, "auth="

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "auth="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1091
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "keystore://CACERT_"

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const-string v20, "USRPKEY_"

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #context:Landroid/content/Context;
    .end local v11           #phase2Method:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02a9

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b029f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ac

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ad

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ae

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02af

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 1117
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0271

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1124
    const-string v19, "dualsim.ui.support"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02aa

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ab

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1133
    .restart local v7       #context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a007c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 1134
    .local v18, tempSimAkaMethods:[Ljava/lang/String;
    sget v19, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    add-int/lit8 v17, v19, 0x1

    .line 1135
    .local v17, sum:I
    const-string v19, "WifiConfigController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "the num of sim slot is :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v17, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    .line 1137
    .local v14, simAkaMethods:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move/from16 v0, v17

    if-ge v9, v0, :cond_f

    .line 1138
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_e

    .line 1139
    aget-object v19, v18, v9

    aput-object v19, v14, v9

    .line 1137
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1088
    .end local v9           #i:I
    .end local v14           #simAkaMethods:[Ljava/lang/String;
    .end local v17           #sum:I
    .end local v18           #tempSimAkaMethods:[Ljava/lang/String;
    .restart local v4       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v11       #phase2Method:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lcom/android/jrdsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1109
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #context:Landroid/content/Context;
    .end local v11           #phase2Method:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ac

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ad

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ae

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02af

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1141
    .restart local v7       #context:Landroid/content/Context;
    .restart local v9       #i:I
    .restart local v14       #simAkaMethods:[Ljava/lang/String;
    .restart local v17       #sum:I
    .restart local v18       #tempSimAkaMethods:[Ljava/lang/String;
    :cond_e
    const/16 v19, 0x1

    aget-object v19, v18, v19

    const-string v20, "1"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v9

    goto :goto_4

    .line 1144
    :cond_f
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    move/from16 v0, v19

    invoke-direct {v4, v7, v0, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1146
    .restart local v4       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v19, 0x1090009

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1150
    const-string v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 1152
    .local v10, mTelephony:Lcom/android/internal/telephony/ITelephony;
    const/16 v19, 0x0

    :try_start_0
    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v12

    .line 1153
    .local v12, sim1Exist:Z
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v13

    .line 1154
    .local v13, sim2Exist:Z
    if-eqz v12, :cond_11

    if-nez v13, :cond_11

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setClickable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .end local v12           #sim1Exist:Z
    .end local v13           #sim2Exist:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 1173
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_10

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1174
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1175
    .local v15, simslots:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    .line 1176
    const/16 v19, 0x1

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v16, v19, 0x1

    .line 1177
    .local v16, slot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1196
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #context:Landroid/content/Context;
    .end local v9           #i:I
    .end local v10           #mTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v14           #simAkaMethods:[Ljava/lang/String;
    .end local v15           #simslots:[Ljava/lang/String;
    .end local v16           #slot:I
    .end local v17           #sum:I
    .end local v18           #tempSimAkaMethods:[Ljava/lang/String;
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ArrayAdapter;

    .line 1199
    .restart local v4       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 1200
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v9

    .line 1201
    .restart local v9       #i:I
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    if-eqz v4, :cond_0

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4, v9}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1157
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v7       #context:Landroid/content/Context;
    .restart local v10       #mTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v12       #sim1Exist:Z
    .restart local v13       #sim2Exist:Z
    .restart local v14       #simAkaMethods:[Ljava/lang/String;
    .restart local v17       #sum:I
    .restart local v18       #tempSimAkaMethods:[Ljava/lang/String;
    :cond_11
    if-nez v12, :cond_12

    if-eqz v13, :cond_12

    .line 1158
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setClickable(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1164
    .end local v12           #sim1Exist:Z
    .end local v13           #sim2Exist:Z
    :catch_0
    move-exception v8

    .line 1165
    .local v8, e:Landroid/os/RemoteException;
    const-string v19, "WifiConfigController"

    const-string v20, "RemoteException happens......"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1161
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v12       #sim1Exist:Z
    .restart local v13       #sim2Exist:Z
    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setClickable(Z)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsSpinner;->setSelection(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 1184
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7           #context:Landroid/content/Context;
    .end local v9           #i:I
    .end local v10           #mTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v12           #sim1Exist:Z
    .end local v13           #sim2Exist:Z
    .end local v14           #simAkaMethods:[Ljava/lang/String;
    .end local v17           #sum:I
    .end local v18           #tempSimAkaMethods:[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b0271

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0b02aa

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private simSlotConfig(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 5
    .parameter "config"
    .parameter "strSimAka"

    .prologue
    .line 1556
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1557
    .local v0, simSlot:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 1561
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config.imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 1563
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config.simSlot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const-string v1, "rild"

    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    .line 1565
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config.pcsc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rild"

    invoke-static {v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_0
    return-void
.end method

.method private switchWlanSecuritySpinner(Landroid/widget/Spinner;)V
    .locals 3
    .parameter "securitySpinner"

    .prologue
    const/16 v2, 0x8

    .line 1477
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 1478
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1488
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1490
    return-void
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 13
    .parameter "linkProperties"

    .prologue
    .line 849
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    .line 850
    const/4 v10, 0x0

    .line 931
    :goto_0
    return v10

    .line 852
    :cond_0
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 853
    .local v7, ipAddr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 854
    const v10, 0x7f090477

    goto :goto_0

    .line 856
    :cond_1
    const/4 v6, 0x0

    .line 858
    .local v6, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 860
    instance-of v10, v6, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_2

    .line 861
    const v10, 0x7f090477

    goto :goto_0

    .line 864
    :catch_0
    move-exception v3

    .line 865
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f090477

    goto :goto_0

    .line 868
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v9, -0x1

    .line 870
    .local v9, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 872
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 873
    :cond_3
    const v10, 0x7f09047a

    goto :goto_0

    .line 875
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 883
    :goto_1
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, gateway:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 887
    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 889
    .local v8, netPart:Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 890
    .local v0, addr:[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 891
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 906
    .end local v0           #addr:[B
    .end local v8           #netPart:Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, dns:Ljava/lang/String;
    const/4 v2, 0x0

    .line 909
    .local v2, dnsAddr:Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 911
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f09047c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    :goto_3
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 923
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 925
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 929
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 931
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 877
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v4           #gateway:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 879
    .local v3, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090482

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 897
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #gateway:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .line 899
    .local v5, gatewayAddr:Ljava/net/InetAddress;
    :try_start_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 903
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 900
    :catch_2
    move-exception v3

    .line 901
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f090478

    goto/16 :goto_0

    .line 915
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #gatewayAddr:Ljava/net/InetAddress;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v2       #dnsAddr:Ljava/net/InetAddress;
    :cond_7
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 919
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 916
    :catch_3
    move-exception v3

    .line 917
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f090479

    goto/16 :goto_0

    .line 926
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 927
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f090479

    goto/16 :goto_0

    .line 894
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v10

    goto :goto_2

    .line 893
    :catch_6
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/jrdsettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WifiConfigController$1;-><init>(Lcom/android/jrdsettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1385
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1391
    return-void
.end method

.method public closeSpinnerDialog()V
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    .line 1522
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWifiExt;->closeSpinnerDialog()V

    .line 1523
    return-void

    .line 1498
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1500
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1503
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    .line 1504
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1505
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    .line 1506
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1508
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    .line 1509
    :cond_5
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1511
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    .line 1512
    :cond_6
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1514
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    .line 1515
    :cond_7
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1516
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto/16 :goto_0

    .line 1517
    :cond_8
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1518
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto/16 :goto_0

    .line 1519
    :cond_9
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto/16 :goto_0
.end method

.method enableSubmitIfAppropriate()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 565
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 566
    .local v2, submit:Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 601
    :goto_0
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    .line 570
    .local v0, enabled:Z
    const/4 v1, 0x0

    .line 572
    .local v1, passwordInvalid:Z
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/wifi/WifiConfigController;->isWEPKeyValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    iget v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    const/16 v3, 0x40

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-lt v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mHex:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 580
    :cond_4
    const/4 v1, 0x1

    .line 583
    :cond_5
    iget v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_8

    .line 587
    :cond_7
    const/4 v1, 0x1

    .line 590
    :cond_8
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    :cond_a
    if-eqz v1, :cond_c

    .line 592
    :cond_b
    const/4 v0, 0x0

    .line 600
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 594
    :cond_c
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 595
    const/4 v0, 0x1

    goto :goto_1

    .line 597
    :cond_d
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x22

    .line 632
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/jrdsettings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/jrdsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 633
    .local v1, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-eq v7, v9, :cond_0

    iget-boolean v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 805
    :goto_0
    return-object v0

    .line 638
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 642
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v7, "none"

    invoke-static {v7}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 643
    const-string v7, "-1"

    invoke-static {v7}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 644
    const-string v7, "none"

    invoke-static {v7}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    .line 648
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-nez v7, :cond_2

    .line 649
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/jrdsettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 652
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 661
    :goto_1
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v7}, Lcom/mediatek/settings/ext/IWifiExt;->getPriority()I

    move-result v7

    if-ltz v7, :cond_1

    .line 662
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v7}, Lcom/mediatek/settings/ext/IWifiExt;->getPriority()I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 665
    :cond_1
    iget v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 798
    const/4 v0, 0x0

    goto :goto_0

    .line 653
    :cond_2
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-ne v7, v9, :cond_3

    .line 654
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/jrdsettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 656
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 658
    :cond_3
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 667
    :pswitch_0
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 801
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 802
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 803
    new-instance v7, Landroid/net/LinkProperties;

    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v8}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 671
    :pswitch_1
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 672
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 673
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v3}, Ljava/util/BitSet;->set(I)V

    .line 674
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 675
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v5

    .line 676
    .local v5, length:I
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, password:Ljava/lang/String;
    const/4 v4, 0x0

    .line 679
    .local v4, keyIndex:I
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWEPKeyIndex:Landroid/widget/Spinner;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWEPKeyIndex:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-eq v7, v9, :cond_5

    .line 681
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWEPKeyIndex:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    .line 685
    :cond_5
    const/16 v7, 0xa

    if-eq v5, v7, :cond_6

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_6

    const/16 v7, 0x20

    if-ne v5, v7, :cond_7

    :cond_6
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 688
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v6, v7, v4

    .line 694
    :goto_3
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_2

    .line 691
    :cond_7
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3

    .line 700
    .end local v4           #keyIndex:I
    .end local v5           #length:I
    .end local v6           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v3}, Ljava/util/BitSet;->set(I)V

    .line 701
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 702
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 703
    .restart local v6       #password:Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 704
    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 706
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 712
    .end local v6           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    .line 713
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 714
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 716
    const-string v9, "AKA"

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v9, "SIM"

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 719
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_a

    const-string v7, ""

    :goto_4
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 722
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_b

    const-string v7, ""

    :goto_5
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 726
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_c

    const-string v7, ""

    :goto_6
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 730
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_d

    .line 732
    .local v3, isEmptyKeyId:Z
    :goto_7
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v3, :cond_e

    const-string v7, ""

    :goto_8
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 736
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v3, :cond_f

    const-string v7, "0"

    :goto_9
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 739
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v3, :cond_10

    const-string v7, ""

    :goto_a
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 741
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-nez v7, :cond_11

    const-string v7, ""

    :goto_b
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 743
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-nez v7, :cond_12

    const-string v7, ""

    :goto_c
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 746
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_9

    .line 747
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 754
    .end local v3           #isEmptyKeyId:Z
    :cond_9
    :goto_d
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-sim/aka, config.toString(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 719
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "auth="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 722
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keystore://CACERT_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 726
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keystore://USRCERT_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    :cond_d
    move v3, v8

    .line 730
    goto/16 :goto_7

    .line 732
    .restart local v3       #isEmptyKeyId:Z
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8

    .line 736
    :cond_f
    const-string v7, "1"

    goto/16 :goto_9

    .line 739
    :cond_10
    const-string v7, "keystore"

    goto/16 :goto_a

    .line 741
    :cond_11
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_b

    .line 743
    :cond_12
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_c

    .line 751
    .end local v3           #isEmptyKeyId:Z
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->eapSimAkaConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_d

    .line 758
    :pswitch_4
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 759
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    .line 760
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 761
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 762
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 763
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 764
    .restart local v6       #password:Ljava/lang/String;
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConfig(), mHex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mHex:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-boolean v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mHex:Z

    if-eqz v7, :cond_14

    .line 766
    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 768
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 774
    .end local v6           #password:Ljava/lang/String;
    :pswitch_5
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 775
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    .line 776
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 777
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 778
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_15

    const-string v7, ""

    :goto_e
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 782
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_16

    const-string v7, ""

    :goto_f
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 786
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_17

    move v2, v3

    .line 787
    .local v2, isEmptyCert:Z
    :goto_10
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_18

    const-string v7, ""

    :goto_11
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 790
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_19

    const-string v7, "0"

    :goto_12
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 793
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_1a

    const-string v7, ""

    :goto_13
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 778
    .end local v2           #isEmptyCert:Z
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keystore://WAPIASCERT_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    .line 782
    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keystore://WAPIUSERCERT_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_17
    move v2, v8

    .line 786
    goto :goto_10

    .line 787
    .restart local v2       #isEmptyCert:Z
    :cond_18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keystore://WAPIUSERCERT_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    .line 790
    :cond_19
    const-string v7, "1"

    goto :goto_12

    .line 793
    :cond_1a
    const-string v7, "keystore"

    goto :goto_13

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1375
    iget-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const v3, 0x7f0b02a8

    .line 1400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0271

    if-ne v1, v2, :cond_2

    .line 1401
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1402
    .local v0, pos:I
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1406
    if-ltz v0, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1428
    .end local v0           #pos:I
    :cond_0
    :goto_1
    return-void

    .line 1402
    .restart local v0       #pos:I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1409
    .end local v0           #pos:I
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b02a7

    if-ne v1, v2, :cond_4

    .line 1410
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1411
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1414
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1417
    .restart local p1
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b02a1

    if-ne v1, v2, :cond_5

    .line 1419
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mHex:Z

    .line 1420
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1421
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick mHex is="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mHex:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",enableSubmitIfAppropriate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1424
    .restart local p1
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b02b4

    if-ne v1, v2, :cond_0

    .line 1426
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1433
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 1434
    iput p3, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1436
    const-string v0, "persist.sys.wlan"

    const-string v1, "wifi-wapi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wapi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1443
    iget v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-lez v0, :cond_0

    .line 1444
    iget v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1457
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1465
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1466
    return-void

    .line 1447
    :cond_2
    invoke-static {}, Lcom/android/jrdsettings/wifi/AccessPoint;->isWFATestSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1448
    iget v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1449
    iget v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    goto :goto_0

    .line 1452
    :cond_3
    iget v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1453
    iget v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    goto :goto_0

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 1459
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_1

    .line 1460
    :cond_5
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_6

    .line 1461
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_1

    .line 1462
    :cond_6
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1463
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1471
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1396
    return-void
.end method
