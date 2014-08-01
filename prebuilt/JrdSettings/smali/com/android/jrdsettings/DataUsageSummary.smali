.class public Lcom/android/jrdsettings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/jrdsettings/DataUsageSummary$AppItem;,
        Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final ACTION_POLICYMGR_CREATED:Ljava/lang/String; = "com.mediatek.server.action.ACTION_POLICY_CREATED"

.field private static final ATTACH_TIME_OUT_LENGTH:I = 0x7530

.field private static final DETACH_TIME_OUT_LENGTH:I = 0x2710

.field private static final EVENT_ATTACH_TIME_OUT:I = 0x7d1

.field private static final EVENT_DETACH_TIME_OUT:I = 0x7d0

.field private static final LIMIT_MAX_SIZE:I = 0xf9c00

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = true

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field private static final PREF_SHOW_ETHERNET:Ljava/lang/String; = "show_ethernet"

.field private static final PREF_SHOW_WIFI:Ljava/lang/String; = "show_wifi"

.field private static final TAB_3G:Ljava/lang/String; = "3g"

.field private static final TAB_4G:Ljava/lang/String; = "4g"

.field private static final TAB_ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TAB_OVERVIEW:Ljava/lang/String; = "Overview"

.field private static final TAB_SIM_1:Ljava/lang/String; = "sim1"

.field private static final TAB_SIM_2:Ljava/lang/String; = "sim2"

.field private static final TAB_SIM_3:Ljava/lang/String; = "sim3"

.field private static final TAB_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static final TAG_APP_DETAILS:Ljava/lang/String; = "appDetails"

.field private static final TAG_BG_DATA_APP_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataDialogMessage"

.field private static final TAG_BG_DATA_APP_DIALOG_TITLE:Ljava/lang/String; = "bgDataDialogTitle"

.field private static final TAG_BG_DATA_MENU_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataMenuDialogMessage"

.field private static final TAG_BG_DATA_RESTRICT_DENY_MESSAGE:Ljava/lang/String; = "bgDataRestrictDenyMessage"

.field private static final TAG_BG_DATA_SUMMARY:Ljava/lang/String; = "bgDataSummary"

.field private static final TAG_BG_DATA_SWITCH:Ljava/lang/String; = "bgDataSwitch"

.field private static final TAG_CONFIRM_APP_RESTRICT:Ljava/lang/String; = "confirmAppRestrict"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"

.field private static final TAG_CONFIRM_DATA_DISABLE:Ljava/lang/String; = "confirmDataDisable"

.field private static final TAG_CONFIRM_DATA_ROAMING:Ljava/lang/String; = "confirmDataRoaming"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"

.field private static final TEST_ANIM:Z = false

.field private static final TEST_RADIOS:Z = false

.field private static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static final WARNING_MAX_SIZE:I = 0xe1000

.field private static mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;

.field private static sIsSwitching:Z

.field private static sIsWifiOnly:Z

.field private static sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;


# instance fields
.field private mAdapter:Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/jrdsettings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/jrdsettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/jrdsettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterOther:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterSim1:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterSim2:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterSim3:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataConnectionObserver:Landroid/database/ContentObserver;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mHaveMobileSim:Z

.field private mHeader:Landroid/view/ViewGroup;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mInsetSide:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentTab:Ljava/lang/String;

.field private mIsAirplaneModeOn:Z

.field private mIsLimitChangeToChecked:Z

.field private mIsUserEnabled:Z

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLockScreenEnabled:Landroid/widget/Switch;

.field private mLockScreenPrefTitle:Landroid/widget/TextView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mOverViewExpList:Landroid/widget/ExpandableListView;

.field private mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

.field private mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSavedCurrentTab:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowOnLockScreenView:Landroid/view/View;

.field private mShowWifi:Z

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTimerHandler:Landroid/os/Handler;

.field private mUidDetailProvider:Lcom/android/jrdsettings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 327
    sput-boolean v0, Lcom/android/jrdsettings/DataUsageSummary;->sIsSwitching:Z

    .line 344
    sput-boolean v0, Lcom/android/jrdsettings/DataUsageSummary;->sIsWifiOnly:Z

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/jrdsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 2093
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/jrdsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/jrdsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 246
    iput v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    .line 263
    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsLimitChangeToChecked:Z

    .line 289
    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    .line 295
    iput-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    .line 301
    iput-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 302
    iput-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 320
    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z

    .line 321
    iput-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    .line 338
    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHaveMobileSim:Z

    .line 355
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/DataUsageSummary$1;-><init>(Lcom/android/jrdsettings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 369
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/DataUsageSummary$2;-><init>(Lcom/android/jrdsettings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataConnectionObserver:Landroid/database/ContentObserver;

    .line 383
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/DataUsageSummary$3;-><init>(Lcom/android/jrdsettings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 395
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$4;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1135
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$6;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 1159
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$7;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1677
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$8;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    .line 1712
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$9;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1762
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$10;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1776
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$11;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1792
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$12;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1802
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$13;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1816
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$14;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1916
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$15;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1954
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$16;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2018
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DataUsageSummary$17;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChartListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2990
    return-void
.end method

.method static synthetic access$002(Lcom/android/jrdsettings/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/jrdsettings/DataUsageSummary;->sIsSwitching:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    sput-boolean p0, Lcom/android/jrdsettings/DataUsageSummary;->sIsSwitching:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->isRemainInserted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/jrdsettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->getCurrentSlot(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/jrdsettings/DataUsageSummary;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/DataUsageSummary;->onDataEnableChangeGemini(ZI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/jrdsettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/jrdsettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/jrdsettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/jrdsettings/DataUsageSummary;Lcom/android/jrdsettings/net/ChartData;)Lcom/android/jrdsettings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAdapter:Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/jrdsettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/jrdsettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/jrdsettings/DataUsageSummary;Lcom/android/jrdsettings/DataUsageSummary$AppItem;)Lcom/android/jrdsettings/DataUsageSummary$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/jrdsettings/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsLimitChangeToChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/jrdsettings/DataUsageSummary;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/jrdsettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$4200()Lcom/mediatek/settings/ext/ISimRoamingExt;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/jrdsettings/DataUsageSummary;->sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/jrdsettings/DataUsageSummary;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/DataUsageSummary;->setDataRoaming(IZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/jrdsettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$4500()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateTabs()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/jrdsettings/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 1031
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1035
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 1036
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v8, 0x7f090886

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3188
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3191
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3193
    .local v1, limited:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 3194
    .local v3, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 3195
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3199
    .local v2, subscriberId:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/jrdsettings/DataUsageSummary;->isSimInserted(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/DataUsageSummary;->hasLimitedPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3201
    invoke-virtual {p0, v8}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3203
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/jrdsettings/DataUsageSummary;->isSimInserted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v7}, Lcom/android/jrdsettings/DataUsageSummary;->hasLimitedPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3205
    invoke-virtual {p0, v8}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3217
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3218
    const v4, 0x7f090885

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3220
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3221
    const v4, 0x7f090884

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3225
    .end local v2           #subscriberId:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3226
    const v4, 0x7f090881

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3228
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3229
    const v4, 0x7f090882

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3232
    :cond_5
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3172
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    .line 3175
    .local v0, limited:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3176
    const v1, 0x7f090887

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3179
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .parameter "tag"
    .parameter "title"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 1153
    .local v3, tab:Landroid/widget/TabHost$TabSpec;
    sget-object v0, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    move-object v2, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 1155
    .local v6, newTab:Landroid/widget/TabHost$TabSpec;
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v6, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1156
    return-object v6
.end method

.method private checkMtkLockScreenApkExist()Z
    .locals 7

    .prologue
    .line 3295
    const/4 v3, 0x0

    .line 3296
    .local v3, isApkExist:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3297
    .local v0, context:Landroid/content/Context;
    const-string v4, "com.mediatek.DataUsageLockScreenClient"

    .line 3299
    .local v4, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3302
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    .line 3308
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 3303
    :catch_0
    move-exception v1

    .line 3304
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DataUsage"

    const-string v6, "ClassNotFoundException happens,MTK Keyguard did not install"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 2944
    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 2945
    .local v2, template:Landroid/net/NetworkTemplate;
    if-nez v2, :cond_0

    .line 2982
    :goto_0
    return-object v1

    .line 2947
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2955
    :pswitch_0
    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2956
    .local v0, subscriber:Ljava/lang/String;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeTabFromIntent, subscriber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    const-string v1, "sim1"

    .line 2958
    .local v1, targetTab:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2959
    const-string v3, "DataUsage"

    const-string v4, "the subscriber error , null!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const-string v1, "sim1"

    goto :goto_0

    .line 2949
    .end local v0           #subscriber:Ljava/lang/String;
    .end local v1           #targetTab:Ljava/lang/String;
    :pswitch_1
    const-string v1, "3g"

    goto :goto_0

    .line 2951
    :pswitch_2
    const-string v1, "4g"

    goto :goto_0

    .line 2962
    .restart local v0       #subscriber:Ljava/lang/String;
    .restart local v1       #targetTab:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2963
    const-string v1, "sim1"

    goto :goto_0

    .line 2964
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2965
    const-string v1, "sim2"

    goto :goto_0

    .line 2970
    :cond_3
    const-string v3, "DataUsage"

    const-string v4, "the subscriber error , no matching!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const-string v1, "sim1"

    goto :goto_0

    .line 2980
    .end local v0           #subscriber:Ljava/lang/String;
    .end local v1           #targetTab:Ljava/lang/String;
    :pswitch_3
    const-string v1, "wifi"

    goto :goto_0

    .line 2947
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/jrdsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1021
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/jrdsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1022
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/jrdsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1024
    invoke-static {}, Lcom/android/jrdsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1025
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1026
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1027
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2097
    const v8, 0x10010

    .line 2099
    .local v8, flags:I
    sget-object v9, Lcom/android/jrdsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 2100
    :try_start_0
    sget-object v0, Lcom/android/jrdsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2101
    sget-object v1, Lcom/android/jrdsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 2103
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 2003
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2004
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2005
    .local v0, actualSubscriberId:Ljava/lang/String;
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1514
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/jrdsettings/DataUsageSummary$AppItem;->key:I

    .line 1515
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1516
    .local v1, uidPolicy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentSlot(Ljava/lang/String;)I
    .locals 2
    .parameter "currentTab"

    .prologue
    .line 3491
    const/4 v0, 0x0

    .line 3492
    .local v0, simSlot:I
    const-string v1, "sim1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3493
    const/4 v0, 0x0

    .line 3499
    :cond_0
    :goto_0
    return v0

    .line 3494
    :cond_1
    const-string v1, "sim2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3495
    const/4 v0, 0x1

    goto :goto_0

    .line 3496
    :cond_2
    const-string v1, "sim3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3497
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1463
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1464
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getDataRoaming(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, 0x1

    .line 1471
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1472
    .local v0, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get data Roaming for slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEnableStateInProvider(Ljava/lang/String;)Z
    .locals 7
    .parameter "currentTab"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3316
    const/4 v1, 0x1

    .line 3319
    .local v1, previousState:I
    :try_start_0
    const-string v2, "sim1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3320
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_usage_on_lockscreen_sim1"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3335
    :cond_0
    :goto_0
    const-string v5, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTab : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " lock screen state ON : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    if-ne v1, v3, :cond_3

    :goto_2
    return v3

    .line 3322
    :cond_1
    :try_start_1
    const-string v2, "sim2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3323
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_usage_on_lockscreen_sim2"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 3331
    :catch_0
    move-exception v0

    .line 3332
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .line 3333
    const-string v2, "DataUsage"

    const-string v5, "Get data from provider failure"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    move v2, v4

    .line 3335
    goto :goto_1

    :cond_3
    move v3, v4

    .line 3336
    goto :goto_2
.end method

.method private getSimIndicatorState(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    .line 3273
    const/4 v2, -0x1

    .line 3275
    .local v2, simIndicatorState:I
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 3276
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3285
    :cond_0
    :goto_0
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator() slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,simIndicatorState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    return v2

    .line 3280
    :catch_0
    move-exception v0

    .line 3281
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DataUsage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3282
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3283
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "DataUsage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 2012
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    .line 2013
    .local v1, teleEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, imsiId:Ljava/lang/String;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId() slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imsiId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return-object v0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 3163
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasLimitedPolicy(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    .line 3543
    const/4 v0, 0x0

    .line 3544
    .local v0, hasLimitedPolicy:Z
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    if-eqz v1, :cond_0

    .line 3545
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    .line 3548
    :cond_0
    return v0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 3084
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3054
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3056
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 3058
    .local v4, isSimStateReady:Z
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v5

    .line 3059
    .local v5, teleEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v5, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v2, v6

    .line 3060
    .local v2, isSim1StateReady:Z
    :goto_0
    invoke-virtual {v5, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v8

    if-ne v8, v9, :cond_2

    move v3, v6

    .line 3065
    .local v3, isSim2StateReady:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    move v4, v6

    .line 3073
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v1, v6

    .line 3076
    .local v1, isAirplaneModeOn:Z
    :goto_3
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    :goto_4
    return v6

    .end local v1           #isAirplaneModeOn:Z
    .end local v2           #isSim1StateReady:Z
    .end local v3           #isSim2StateReady:Z
    :cond_1
    move v2, v7

    .line 3059
    goto :goto_0

    .restart local v2       #isSim1StateReady:Z
    :cond_2
    move v3, v7

    .line 3060
    goto :goto_1

    .restart local v3       #isSim2StateReady:Z
    :cond_3
    move v4, v7

    .line 3065
    goto :goto_2

    :cond_4
    move v1, v7

    .line 3073
    goto :goto_3

    .restart local v1       #isAirplaneModeOn:Z
    :cond_5
    move v6, v7

    .line 3076
    goto :goto_4
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 3107
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3108
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "root"
    .parameter "label"

    .prologue
    .line 3153
    const v1, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3155
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3156
    return-object v0
.end method

.method private inflateLockScreenView(Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    .line 3366
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3368
    const v0, 0x207000b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    .line 3371
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-static {p1, v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    .line 3373
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3374
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 3375
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3376
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    new-instance v1, Lcom/android/jrdsettings/DataUsageSummary$18;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/DataUsageSummary$18;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3397
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    .line 3398
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    const v1, 0x7f09013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3399
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3401
    :cond_0
    return-void
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "root"
    .parameter "widget"

    .prologue
    const/4 v4, -0x2

    .line 3144
    const v2, 0x7f040082

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3145
    .local v0, view:Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3147
    .local v1, widgetFrame:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3148
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 3240
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3241
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3245
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3246
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3247
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3249
    new-instance v3, Lcom/android/jrdsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/jrdsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3250
    new-instance v3, Lcom/android/jrdsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/jrdsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3251
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1458
    :goto_0
    return v1

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 3

    .prologue
    .line 1409
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no gemini mobile data state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v0

    .line 1419
    .local v0, result:Z
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMoblieDataEnabled for slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return v0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1984
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1985
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1986
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1987
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1989
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedtoShowRoamingMsg()Z
    .locals 6

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1755
    .local v2, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1756
    .local v0, isInRoaming:Z
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getDataRoaming()Z

    move-result v1

    .line 1757
    .local v1, isRoamingEnabled:Z
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoamingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 6
    .parameter "policy"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1447
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1448
    .local v0, isSimReady:Z
    :goto_0
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkPolicyModifiable(), policy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , isSimReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0           #isSimReady:Z
    :cond_0
    move v0, v2

    .line 1447
    goto :goto_0

    .restart local v0       #isSimReady:Z
    :cond_1
    move v1, v2

    .line 1449
    goto :goto_1
.end method

.method private isRemainInserted(Ljava/lang/String;)Z
    .locals 4
    .parameter "savedTab"

    .prologue
    .line 3555
    const/4 v0, 0x0

    .line 3556
    .local v0, clearSavedTab:Z
    const-string v1, "sim1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3557
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->isSimInserted(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3558
    const/4 v0, 0x1

    .line 3571
    :cond_0
    :goto_0
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clearSavedTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    return v0

    .line 3560
    :cond_1
    const-string v1, "sim2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3561
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->isSimInserted(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3562
    const/4 v0, 0x1

    goto :goto_0

    .line 3564
    :cond_2
    const-string v1, "sim3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3565
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->isSimInserted(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3566
    const/4 v0, 0x1

    goto :goto_0

    .line 3569
    :cond_3
    const-string v1, "DataUsage"

    const-string v2, "savedTab is not current cared tab"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSimInserted(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 3528
    const/4 v1, 0x0

    .line 3529
    .local v1, isSimInserted:Z
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 3531
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3536
    :cond_0
    :goto_0
    return v1

    .line 3532
    :catch_0
    move-exception v0

    .line 3533
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "RemoteException happens......"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSimStatusNotReady(Ljava/lang/String;)Z
    .locals 5
    .parameter "currentTab"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3344
    const/4 v1, 0x1

    .line 3346
    .local v1, isStatusNotReady:Z
    const/4 v0, 0x1

    .line 3347
    .local v0, isSimRdioOff:Z
    const-string v4, "sim1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3348
    invoke-direct {p0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 3354
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    move v1, v2

    .line 3358
    :goto_1
    return v1

    :cond_2
    move v0, v3

    .line 3348
    goto :goto_0

    .line 3349
    :cond_3
    const-string v4, "sim2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3350
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    .line 3351
    :cond_5
    const-string v4, "sim3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3352
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v4

    if-ne v4, v2, :cond_6

    move v0, v2

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    move v1, v3

    .line 3354
    goto :goto_1
.end method

.method private onDataEnableChangeGemini(ZI)V
    .locals 3
    .parameter "dataEnabled"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 1696
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1699
    :cond_0
    if-eqz p1, :cond_2

    .line 1700
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1701
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v1, 0x12e

    invoke-virtual {v0, p2, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 1702
    const-string v0, "DataUsage"

    const-string v1, "Data enable check change request pin"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 1705
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/android/jrdsettings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    .line 1706
    iput-boolean v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z

    goto :goto_0

    .line 1709
    :cond_2
    invoke-static {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;I)V

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 1520
    const-string v1, "DataUsage"

    const-string v2, "setAppRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/jrdsettings/DataUsageSummary$AppItem;->key:I

    .line 1522
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1524
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1525
    return-void

    .line 1522
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDataRoaming(IZ)V
    .locals 6
    .parameter "slotId"
    .parameter "enabled"

    .prologue
    .line 1489
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set data Romaing for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 1492
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p2, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1501
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz p2, :cond_1

    .line 1502
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1506
    :goto_1
    return-void

    .line 1493
    .end local v1           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :catch_0
    move-exception v0

    .line 1494
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "data roaming setting remote exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1497
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "DataUsage"

    const-string v3, "iTelephony is null , error !"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1504
    .restart local v1       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    goto :goto_1
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1480
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1481
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1482
    return-void

    .line 1480
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLockScreenState(ZZ)V
    .locals 1
    .parameter "isEnabled"
    .parameter "isChecked"

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 3450
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3451
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3452
    return-void
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 5
    .parameter "slotId"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 1433
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled for slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/jrdsettings/DataUsageSummary;->sIsSwitching:Z

    .line 1435
    if-eqz p2, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 1437
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1443
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1444
    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 1440
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1441
    iput-boolean v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1424
    const-string v0, "DataUsage"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1427
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1996
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1997
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1998
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 2000
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .parameter "limitBytes"

    .prologue
    .line 1382
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyLimitBytes() , limitBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mTemplate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataEnabled.isChecked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1387
    const-string v0, "DataUsage"

    const-string v1, "mobile data is not open , so return ,not set policy limit"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :goto_0
    return-void

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V

    goto :goto_0
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .parameter "warningBytes"

    .prologue
    .line 1376
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyWarningBytes() , warningBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1379
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "parent"
    .parameter "string"

    .prologue
    .line 3267
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3268
    .local v0, summary:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3269
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3270
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .parameter "parent"
    .parameter "resId"

    .prologue
    .line 3258
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3259
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3260
    return-void
.end method

.method private updateAppDetail()V
    .locals 21

    .prologue
    .line 1293
    const-string v18, "DataUsage"

    const-string v19, "updateAppDetail()"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1295
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1296
    .local v15, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1298
    .local v9, inflater:Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/jrdsettings/DataUsageSummary$AppItem;->key:I

    move/from16 v17, v0

    .line 1315
    .local v17, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/jrdsettings/net/UidDetailProvider;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/jrdsettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/jrdsettings/net/UidDetail;

    move-result-object v7

    .line 1316
    .local v7, detail:Lcom/android/jrdsettings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/jrdsettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1319
    iget-object v0, v7, Lcom/android/jrdsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1320
    iget-object v5, v7, Lcom/android/jrdsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .local v5, arr$:[Ljava/lang/CharSequence;
    array-length v11, v5

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v10, v5, v8

    .line 1321
    .local v10, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0, v10}, Lcom/android/jrdsettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1320
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1302
    .end local v5           #arr$:[Ljava/lang/CharSequence;
    .end local v7           #detail:Lcom/android/jrdsettings/net/UidDetail;
    .end local v8           #i$:I
    .end local v10           #label:Ljava/lang/CharSequence;
    .end local v11           #len$:I
    .end local v17           #uid:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1373
    :goto_1
    return-void

    .line 1324
    .restart local v7       #detail:Lcom/android/jrdsettings/net/UidDetail;
    .restart local v17       #uid:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/jrdsettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v9, v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1328
    :cond_2
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1329
    .local v14, packageNames:[Ljava/lang/String;
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_5

    .line 1330
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.category.DEFAULT"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    const/4 v12, 0x0

    .line 1335
    .local v12, matchFound:Z
    move-object v5, v14

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .restart local v11       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v13, v5, v8

    .line 1336
    .local v13, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1338
    const/4 v12, 0x1

    .line 1343
    .end local v13           #packageName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 1351
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #matchFound:Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateDetailData()V

    .line 1353
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-static {v6}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1357
    sget-object v18, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    const v19, 0x7f09088c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSwitch"

    invoke-interface/range {v18 .. v20}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1359
    .local v4, appBgDataSwitch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1360
    .local v16, title:Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    sget-object v18, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    const v19, 0x7f09088d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSummary"

    invoke-interface/range {v18 .. v20}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1363
    .local v3, appBgDataSummary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1372
    .end local v3           #appBgDataSummary:Ljava/lang/String;
    .end local v4           #appBgDataSwitch:Ljava/lang/String;
    .end local v16           #title:Landroid/widget/TextView;
    :goto_4
    const-string v18, "DataUsage"

    const-string v19, "updateAppDetail done"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1335
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #matchFound:Z
    .restart local v13       #packageName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1347
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #matchFound:Z
    .end local v13           #packageName:Ljava/lang/String;
    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 1370
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateBody()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x8

    .line 1174
    iput-boolean v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mBinding:Z

    .line 1175
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1177
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1178
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, currentTab:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 1181
    .local v2, isOwner:Z
    :goto_1
    const-string v7, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateBody(), currentTab = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , mSavedCurrentTab = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , sIsSwitching = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/jrdsettings/DataUsageSummary;->sIsSwitching:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    if-nez v1, :cond_2

    .line 1186
    const-string v5, "DataUsage"

    const-string v6, "no tab selected; hiding body"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v2           #isOwner:Z
    :cond_1
    move v2, v6

    .line 1179
    goto :goto_1

    .line 1189
    .restart local v2       #isOwner:Z
    :cond_2
    const-string v7, "Overview"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1190
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v5, :cond_4

    .line 1191
    :cond_3
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1192
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 1193
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v5}, Lcom/mediatek/datausage/OverViewTabAdapter;->updateAdapter()V

    .line 1194
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v5}, Lcom/mediatek/datausage/OverViewTabAdapter;->notifyDataSetChanged()V

    .line 1197
    :cond_4
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 1201
    :cond_5
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 1202
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->updateLockScreenViewVisibility(Ljava/lang/String;)V

    .line 1204
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1207
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move v3, v5

    .line 1208
    .local v3, tabChanged:Z
    :goto_2
    iput-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 1210
    iget-object v9, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v2, :cond_7

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1217
    .local v4, tele:Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapterOther:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    iput-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    .line 1219
    const-string v7, "sim1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1220
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapterSim1:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, v5, v6}, Lcom/android/jrdsettings/DataUsageSummary;->updateDataSwitchState(Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;I)V

    .line 1264
    :goto_4
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1268
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    invoke-static {v7, v8}, Lcom/android/jrdsettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/jrdsettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v11, v7, v8}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1272
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1274
    iput-boolean v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .end local v3           #tabChanged:Z
    .end local v4           #tele:Landroid/telephony/TelephonyManager;
    :cond_6
    move v3, v6

    .line 1207
    goto :goto_2

    .restart local v3       #tabChanged:Z
    :cond_7
    move v7, v8

    .line 1210
    goto :goto_3

    .line 1221
    .restart local v4       #tele:Landroid/telephony/TelephonyManager;
    :cond_8
    const-string v7, "sim2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1222
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapterSim2:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, v7, v5}, Lcom/android/jrdsettings/DataUsageSummary;->updateDataSwitchState(Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;I)V

    goto :goto_4

    .line 1223
    :cond_9
    const-string v5, "sim3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1224
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapterSim3:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, v5, v11}, Lcom/android/jrdsettings/DataUsageSummary;->updateDataSwitchState(Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;I)V

    goto :goto_4

    .line 1225
    :cond_a
    const-string v5, "mobile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1227
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v7, 0x7f09087d

    invoke-static {v5, v7}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1228
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/jrdsettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1229
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    :goto_5
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_4

    .line 1232
    :cond_b
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v7, 0x7f090888

    invoke-static {v5, v7}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_5

    .line 1237
    :cond_c
    const-string v5, "3g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1238
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v7, 0x7f090889

    invoke-static {v5, v7}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1239
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v7, 0x7f09087f

    invoke-static {v5, v7}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1241
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_4

    .line 1243
    :cond_d
    const-string v5, "4g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1244
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v7, 0x7f09088a

    invoke-static {v5, v7}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1245
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v7, 0x7f09087e

    invoke-static {v5, v7}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1247
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_4

    .line 1249
    :cond_e
    const-string v5, "wifi"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1251
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_4

    .line 1255
    :cond_f
    const-string v5, "ethernet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1257
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_4

    .line 1262
    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown tab: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 24
    .parameter "policy"

    .prologue
    .line 1598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;

    .line 1599
    .local v22, previousItem:Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1603
    .local v4, context:Landroid/content/Context;
    const-wide v18, 0x7fffffffffffffffL

    .line 1604
    .local v18, historyStart:J
    const-wide/high16 v16, -0x8000

    .line 1605
    .local v16, historyEnd:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    if-eqz v3, :cond_0

    .line 1607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v3, v3, Lcom/android/jrdsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_3

    .line 1608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v3, v3, Lcom/android/jrdsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v18

    .line 1609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v3, v3, Lcom/android/jrdsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v16

    .line 1616
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1617
    .local v20, now:J
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v3, v18, v9

    if-nez v3, :cond_1

    move-wide/from16 v18, v20

    .line 1618
    :cond_1
    const-wide/high16 v9, -0x8000

    cmp-long v3, v16, v9

    if-nez v3, :cond_2

    const-wide/16 v9, 0x1

    add-long v16, v20, v9

    .line 1620
    :cond_2
    const/4 v15, 0x0

    .line 1621
    .local v15, hasCycles:Z
    if-eqz p1, :cond_5

    .line 1623
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v7

    .line 1626
    .local v7, cycleEnd:J
    :goto_1
    cmp-long v3, v7, v18

    if-lez v3, :cond_4

    .line 1627
    move-object/from16 v0, p1

    invoke-static {v7, v8, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 1628
    .local v5, cycleStart:J
    const-string v3, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generating cs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to ce="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " waiting for hs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    new-instance v3, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v3 .. v8}, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v9, v3}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1631
    move-wide v7, v5

    .line 1632
    const/4 v15, 0x1

    .line 1633
    goto :goto_1

    .line 1611
    .end local v5           #cycleStart:J
    .end local v7           #cycleEnd:J
    .end local v15           #hasCycles:Z
    .end local v20           #now:J
    :cond_3
    const-string v3, "DataUsage"

    const-string v9, "mChartData.network == null"

    invoke-static {v3, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1636
    .restart local v7       #cycleEnd:J
    .restart local v15       #hasCycles:Z
    .restart local v20       #now:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/jrdsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1639
    .end local v7           #cycleEnd:J
    :cond_5
    if-nez v15, :cond_7

    .line 1641
    move-wide/from16 v7, v16

    .line 1642
    .restart local v7       #cycleEnd:J
    :goto_2
    cmp-long v3, v7, v18

    if-lez v3, :cond_6

    .line 1643
    const-wide v9, 0x90321000L

    sub-long v5, v7, v9

    .line 1644
    .restart local v5       #cycleStart:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    new-instance v3, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v3 .. v8}, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v9, v3}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1645
    move-wide v7, v5

    .line 1646
    goto :goto_2

    .line 1648
    .end local v5           #cycleStart:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1652
    .end local v7           #cycleEnd:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 1653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/jrdsettings/DataUsageSummary$CycleItem;)I

    move-result v12

    .line 1654
    .local v12, position:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v12}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;

    .line 1659
    .local v23, selectedItem:Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 1662
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v9 .. v14}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1672
    .end local v12           #position:I
    .end local v23           #selectedItem:Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    :cond_8
    :goto_3
    return-void

    .line 1667
    .restart local v12       #position:I
    .restart local v23       #selectedItem:Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_3

    .line 1670
    .end local v12           #position:I
    .end local v23           #selectedItem:Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_3
.end method

.method private updateDataSwitchState(Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;I)V
    .locals 4
    .parameter "cycleAdapter"
    .parameter "slotId"

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 3507
    sget-object v1, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-interface {v1, p2}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeUpdateMobileData(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 3510
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3511
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3512
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable this sim enable because radio off ,slotId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    sget-boolean v2, Lcom/android/jrdsettings/DataUsageSummary;->sIsSwitching:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 3520
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    .line 3521
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 3522
    return-void

    .line 3514
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f090888

    invoke-static {v1, v2}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 3515
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f09087d

    invoke-static {v1, v2}, Lcom/android/jrdsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_0

    .line 3519
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateDetailData()V
    .locals 29

    .prologue
    .line 1855
    const-string v3, "DataUsage"

    const-string v11, "updateDetailData()"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1858
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1859
    .local v6, end:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1861
    .local v8, now:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    .line 1863
    .local v19, context:Landroid/content/Context;
    const/4 v10, 0x0

    .line 1864
    .local v10, entry:Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v3, v3, Lcom/android/jrdsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_1

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v3, v3, Lcom/android/jrdsettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1867
    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v11, v13

    .line 1868
    .local v20, defaultBytes:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v3, v3, Lcom/android/jrdsettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1869
    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v11, v13

    .line 1871
    .local v22, foregroundBytes:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppPieChart:Lcom/android/jrdsettings/widget/PieChartView;

    const/16 v11, 0xaf

    invoke-virtual {v3, v11}, Lcom/android/jrdsettings/widget/PieChartView;->setOriginAngle(I)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppPieChart:Lcom/android/jrdsettings/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/jrdsettings/widget/PieChartView;->removeAllSlices()V

    .line 1874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppPieChart:Lcom/android/jrdsettings/widget/PieChartView;

    const-string v11, "#d88d3a"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/jrdsettings/widget/PieChartView;->addSlice(JI)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppPieChart:Lcom/android/jrdsettings/widget/PieChartView;

    const-string v11, "#666666"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/jrdsettings/widget/PieChartView;->addSlice(JI)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppPieChart:Lcom/android/jrdsettings/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/jrdsettings/widget/PieChartView;->generatePath()V

    .line 1879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v19 .. v21}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v11, v3, Lcom/android/jrdsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1885
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1897
    .end local v20           #defaultBytes:J
    .end local v22           #foregroundBytes:J
    :goto_0
    if-eqz v10, :cond_3

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v26, v11, v13

    .line 1898
    .local v26, totalBytes:J
    :goto_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 1899
    .local v28, totalPhrase:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/jrdsettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v24

    .line 1902
    .local v24, rangePhrase:Ljava/lang/String;
    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1904
    :cond_0
    const v25, 0x7f0908a7

    .line 1909
    .local v25, summaryRes:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v28, v11, v12

    const/4 v12, 0x1

    aput-object v24, v11, v12

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lcom/android/jrdsettings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1914
    return-void

    .line 1888
    .end local v24           #rangePhrase:Ljava/lang/String;
    .end local v25           #summaryRes:I
    .end local v26           #totalBytes:J
    .end local v28           #totalPhrase:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    if-eqz v3, :cond_2

    .line 1889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;

    iget-object v11, v3, Lcom/android/jrdsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1893
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/jrdsettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    .line 1897
    :cond_3
    const-wide/16 v26, 0x0

    goto :goto_1

    .line 1906
    .restart local v24       #rangePhrase:Ljava/lang/String;
    .restart local v26       #totalBytes:J
    .restart local v28       #totalPhrase:Ljava/lang/String;
    :cond_4
    const v25, 0x7f0908a6

    .restart local v25       #summaryRes:I
    goto :goto_2
.end method

.method private updateLockScreenViewState(Landroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 10
    .parameter "template"
    .parameter "currentTab"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 3408
    const-string v7, "DataUsage"

    const-string v8, "updateLockScreenViewState()"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    if-eqz v7, :cond_0

    invoke-direct {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3443
    :cond_0
    :goto_0
    return-void

    .line 3416
    :cond_1
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-virtual {v7, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 3417
    .local v3, policy:Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_2

    iget-wide v1, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3418
    .local v1, limitBytes:J
    :goto_1
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3419
    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3420
    cmp-long v4, v1, v4

    if-nez v4, :cond_3

    .line 3423
    invoke-direct {p0, v9, v9}, Lcom/android/jrdsettings/DataUsageSummary;->setLockScreenState(ZZ)V

    goto :goto_0

    .end local v1           #limitBytes:J
    :cond_2
    move-wide v1, v4

    .line 3417
    goto :goto_1

    .line 3429
    .restart local v1       #limitBytes:J
    :cond_3
    iget-boolean v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsLimitChangeToChecked:Z

    if-eqz v4, :cond_4

    move v0, v6

    .line 3430
    .local v0, isChecked:Z
    :goto_2
    invoke-direct {p0, v6, v0}, Lcom/android/jrdsettings/DataUsageSummary;->setLockScreenState(ZZ)V

    .line 3431
    iput-boolean v9, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsLimitChangeToChecked:Z

    goto :goto_0

    .line 3429
    .end local v0           #isChecked:Z
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 3436
    :cond_5
    invoke-direct {p0, v9, v9}, Lcom/android/jrdsettings/DataUsageSummary;->setLockScreenState(ZZ)V

    goto :goto_0

    .line 3441
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v9, v4}, Lcom/android/jrdsettings/DataUsageSummary;->setLockScreenState(ZZ)V

    goto :goto_0
.end method

.method private updateLockScreenViewVisibility(Ljava/lang/String;)V
    .locals 4
    .parameter "currentTab"

    .prologue
    const/16 v1, 0x8

    .line 3459
    const-string v0, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLockScreenViewVisibility() currentTab : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3485
    :cond_0
    :goto_0
    return-void

    .line 3463
    :cond_1
    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3465
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3481
    :goto_1
    sget-object v0, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeLockScreenViewVisibility(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3482
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3467
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3469
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3473
    :cond_3
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->checkMtkLockScreenApkExist()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 9
    .parameter "refreshCycle"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1532
    const-string v2, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePolicy() , refreshCycle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mIsUserEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1535
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1542
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/DataUsageSummary;->getCurrentSlot(Ljava/lang/String;)I

    move-result v1

    .line 1543
    .local v1, simSlot:I
    iput-boolean v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mBinding:Z

    .line 1544
    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z

    if-eqz v2, :cond_3

    :cond_0
    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1545
    iput-boolean v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mBinding:Z

    .line 1555
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v5}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 1556
    .local v0, policy:Landroid/net/NetworkPolicy;
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-nez v2, :cond_4

    .line 1557
    const-string v2, "DataUsage"

    const-string v3, "mDisableAtLimitView should not be null here !!!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_1
    :goto_2
    return-void

    .line 1537
    .end local v0           #policy:Landroid/net/NetworkPolicy;
    .end local v1           #simSlot:I
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .restart local v1       #simSlot:I
    :cond_3
    move v2, v3

    .line 1544
    goto :goto_1

    .line 1560
    .restart local v0       #policy:Landroid/net/NetworkPolicy;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1561
    const-string v2, "DataUsage"

    const-string v5, "network policy is modifiable, mobile data checkBox is on"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1563
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-virtual {v2, v0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->setPolicyActive(Landroid/net/NetworkPolicy;)V

    .line 1564
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v0, :cond_8

    iget-wide v5, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1565
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1566
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    invoke-virtual {v2, v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1578
    :cond_5
    :goto_4
    const-string v2, "sim1"

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "sim2"

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mobile"

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1580
    :cond_6
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/DataUsageSummary;->updateLockScreenViewState(Landroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 1585
    :cond_7
    if-eqz p1, :cond_1

    .line 1587
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    goto :goto_2

    :cond_8
    move v4, v3

    .line 1564
    goto :goto_3

    .line 1571
    :cond_9
    const-string v2, "DataUsage"

    const-string v3, "network policy not modifiable, no warning limit/sweeps."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_4
.end method

.method private updateShowWifiEthernet(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3579
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_wifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    .line 3580
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_ethernet"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    .line 3581
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasReadyMobileRadio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    invoke-static {p1}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3584
    invoke-static {p1}, Lcom/android/jrdsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    .line 3585
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    .line 3587
    :cond_0
    return-void
.end method

.method private updateTabs()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1045
    const-string v8, "DataUsage"

    const-string v9, "updateTabs()"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1047
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1049
    const-string v8, "DataUsage"

    const-string v9, "clear All Tabs..."

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->updateShowWifiEthernet(Landroid/content/Context;)V

    .line 1057
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "Overview"

    const v10, 0x7f090141

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1059
    const-string v8, "DataUsage"

    const-string v9, "Add OVERVIEW TAB"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    .line 1063
    .local v1, mobileSplit:Z
    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1064
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "3g"

    const v10, 0x7f090885

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1065
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "4g"

    const v10, 0x7f090884

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1097
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v8, :cond_1

    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1098
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "wifi"

    const v10, 0x7f090881

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1100
    :cond_1
    iget-boolean v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1101
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "ethernet"

    const v10, 0x7f090882

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1104
    :cond_2
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v8

    if-nez v8, :cond_6

    move v3, v6

    .line 1105
    .local v3, noTabs:Z
    :goto_1
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v8

    if-le v8, v6, :cond_7

    move v2, v6

    .line 1106
    .local v2, multipleTabs:Z
    :goto_2
    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1107
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIntentTab "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSavedCurrentTab "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1109
    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1111
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V

    .line 1116
    :goto_4
    iput-object v11, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 1130
    :cond_3
    :goto_5
    return-void

    .line 1068
    .end local v2           #multipleTabs:Z
    .end local v3           #noTabs:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 1069
    .local v4, sim1Info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v4, :cond_5

    .line 1070
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "sim1"

    iget-object v10, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1072
    :cond_5
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    .line 1073
    .local v5, sim2Info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v5, :cond_0

    .line 1074
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "sim2"

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .end local v4           #sim1Info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v5           #sim2Info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    move v3, v7

    .line 1104
    goto :goto_1

    .restart local v3       #noTabs:Z
    :cond_7
    move v2, v7

    .line 1105
    goto :goto_2

    .line 1106
    .restart local v2       #multipleTabs:Z
    :cond_8
    const/16 v7, 0x8

    goto :goto_3

    .line 1113
    :cond_9
    const-string v6, "DataUsage"

    const-string v7, "set Intent tab "

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 1117
    :cond_a
    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 1118
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saved curernt tabs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1120
    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1122
    :cond_b
    iput-object v11, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    .line 1123
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V

    goto/16 :goto_5

    .line 1124
    :cond_c
    if-eqz v3, :cond_3

    .line 1126
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V

    goto/16 :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 3119
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 3120
    .local v6, conn:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 3123
    .local v10, hasEthernet:Z
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 3125
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 3136
    .local v8, ethernetBytes:J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3128
    .end local v8           #ethernetBytes:J
    :catch_0
    move-exception v7

    .line 3129
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3132
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8       #ethernetBytes:J
    goto :goto_0

    .line 3136
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1280
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 490
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 494
    .local v1, orientation:I
    const/4 v2, 0x7

    .line 495
    .local v2, winOrientation:I
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current config orienation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 497
    const/4 v2, 0x6

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 502
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 504
    .local v0, context:Landroid/content/Context;
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 506
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 508
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 509
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 511
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 517
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 518
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 520
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    .line 521
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    new-instance v3, Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 537
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 539
    new-instance v3, Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    .line 540
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->read()V

    .line 555
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    sput-boolean v6, Lcom/android/jrdsettings/DataUsageSummary;->sIsWifiOnly:Z

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/jrdsettings/Utils;->getDataUsageSummaryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v3

    sput-object v3, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 561
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/jrdsettings/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object v3

    sput-object v3, Lcom/android/jrdsettings/DataUsageSummary;->sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 563
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 564
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 799
    const/high16 v0, 0x7f11

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 800
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 569
    const-string v4, "DataUsage"

    const-string v7, "onCreateView"

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 571
    .local v0, context:Landroid/content/Context;
    const v4, 0x7f04003e

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 573
    .local v3, view:Landroid/view/View;
    new-instance v4, Lcom/android/jrdsettings/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/android/jrdsettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/jrdsettings/net/UidDetailProvider;

    .line 576
    :try_start_0
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 579
    new-instance v4, Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {v4, v7, v8}, Lcom/mediatek/datausage/OverViewTabAdapter;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 591
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 592
    const v4, 0x7f0b007f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 593
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 594
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 598
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x200

    if-ne v4, v7, :cond_1

    move v2, v5

    .line 600
    .local v2, shouldInset:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 601
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1050029

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    .line 608
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v5}, Lcom/android/jrdsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 610
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 611
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 613
    const v4, 0x7f04003c

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 614
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 618
    const v4, 0x7f0b0080

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    .line 620
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 622
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v6}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 625
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v9, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 626
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 629
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 630
    iget v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 632
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/jrdsettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 633
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 638
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b007c

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 640
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b007d

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 642
    const v4, 0x207000b

    invoke-virtual {p1, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 644
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/jrdsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 646
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 647
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 649
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 650
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 653
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 654
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 655
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v7}, Lcom/android/jrdsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 656
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 657
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 658
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 671
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0072

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 672
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0b0073

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 675
    new-instance v4, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapterSim1:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    .line 676
    new-instance v4, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapterSim2:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    .line 680
    new-instance v4, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapterOther:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    .line 686
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 688
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0069

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/jrdsettings/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    .line 689
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChartListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->setListener(Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 690
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    invoke-virtual {v4, v9}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 694
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0074

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 695
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b0075

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 696
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b0076

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 697
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b0079

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/jrdsettings/widget/PieChartView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppPieChart:Lcom/android/jrdsettings/widget/PieChartView;

    .line 698
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b0077

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 699
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b0078

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 700
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 702
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 703
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 706
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 707
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 708
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v6}, Lcom/android/jrdsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 709
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 710
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 711
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 715
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0b007e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 716
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 718
    new-instance v4, Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/jrdsettings/net/UidDetailProvider;

    iget v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v5, v6}, Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/jrdsettings/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAdapter:Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;

    .line 719
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 720
    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/jrdsettings/DataUsageSummary;->mAdapter:Lcom/android/jrdsettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 722
    .end local v2           #shouldInset:Z
    :goto_2
    return-object v3

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 584
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 586
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception happen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , so finish current activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_1
    move v2, v6

    .line 598
    goto/16 :goto_0

    .line 604
    .restart local v2       #shouldInset:Z
    :cond_2
    iput v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 990
    const-string v0, "DataUsage"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iput-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 992
    iput-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 994
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/jrdsettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/jrdsettings/net/UidDetailProvider;->clearCache()V

    .line 995
    iput-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/jrdsettings/net/UidDetailProvider;

    .line 997
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 1008
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1009
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1010
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 917
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v12, v6

    .line 985
    :goto_0
    return v12

    .line 919
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v12

    .line 921
    .local v8, dataRoaming:Z
    :goto_1
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    .line 922
    .local v7, currentTab:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/jrdsettings/DataUsageSummary;->getCurrentSlot(Ljava/lang/String;)I

    move-result v11

    .line 923
    .local v11, slotId:I
    if-eqz v8, :cond_1

    .line 924
    invoke-static {p0, v11}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;I)V

    goto :goto_0

    .end local v7           #currentTab:Ljava/lang/String;
    .end local v8           #dataRoaming:Z
    .end local v11           #slotId:I
    :cond_0
    move v8, v6

    .line 919
    goto :goto_1

    .line 927
    .restart local v7       #currentTab:Ljava/lang/String;
    .restart local v8       #dataRoaming:Z
    .restart local v11       #slotId:I
    :cond_1
    invoke-direct {p0, v11, v6}, Lcom/android/jrdsettings/DataUsageSummary;->setDataRoaming(IZ)V

    goto :goto_0

    .line 940
    .end local v7           #currentTab:Ljava/lang/String;
    .end local v8           #dataRoaming:Z
    .end local v11           #slotId:I
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v10, v12

    .line 941
    .local v10, restrictBackground:Z
    :goto_2
    if-eqz v10, :cond_3

    .line 942
    invoke-static {p0}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;)V

    goto :goto_0

    .end local v10           #restrictBackground:Z
    :cond_2
    move v10, v6

    .line 940
    goto :goto_2

    .line 945
    .restart local v10       #restrictBackground:Z
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 950
    .end local v10           #restrictBackground:Z
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move v9, v12

    .line 951
    .local v9, mobileSplit:Z
    :goto_3
    invoke-direct {p0, v9}, Lcom/android/jrdsettings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 952
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 953
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .end local v9           #mobileSplit:Z
    :cond_4
    move v9, v6

    .line 950
    goto :goto_3

    .line 957
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v12

    :cond_5
    iput-boolean v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    .line 958
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 959
    iget-boolean v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 960
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 964
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    move v6, v12

    :cond_6
    iput-boolean v6, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    .line 965
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 966
    iget-boolean v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 967
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 971
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 972
    .local v0, activity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/jrdsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0908a8

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 977
    .end local v0           #activity:Landroid/preference/PreferenceActivity;
    :pswitch_6
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 978
    const-string v1, "SyncState"

    const-string v2, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 980
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    move v6, v12

    :cond_8
    invoke-static {p0, v6}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 917
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0308
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 784
    const-string v0, "DataUsage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 786
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    .line 788
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 795
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 22
    .parameter "menu"

    .prologue
    .line 804
    const-string v19, "DataUsage"

    const-string v20, "onPrepareOptionsMenu()"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 806
    .local v3, context:Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    .line 807
    .local v2, appDetailMode:Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    if-nez v19, :cond_2

    const/4 v9, 0x1

    .line 810
    .local v9, isOwner:Z
    :goto_0
    invoke-static {v3}, Lcom/android/jrdsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v6

    .line 811
    .local v6, hasWifiRadio:Z
    invoke-static {v3}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v5

    .line 816
    .local v5, hasReadyMobileRadio:Z
    const v19, 0x7f0b0308

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 819
    .local v4, currentTab:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v10

    .line 820
    .local v10, isSimNotReady:Z
    if-nez v2, :cond_0

    if-eqz v10, :cond_3

    .line 821
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 852
    :goto_1
    const v19, 0x7f0b0309

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 855
    sget-object v19, Lcom/android/jrdsettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    const v20, 0x7f09088c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "bgDataSwitch"

    invoke-interface/range {v19 .. v21}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 857
    .local v11, menuBgDataSwitch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 861
    sget-boolean v19, Lcom/android/jrdsettings/DataUsageSummary;->sIsWifiOnly:Z

    if-nez v19, :cond_8

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    if-eqz v5, :cond_7

    if-nez v2, :cond_7

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 870
    :goto_3
    const v19, 0x7f0b030b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    if-nez v2, :cond_9

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 874
    const v19, 0x7f0b030a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 875
    .local v18, split4g:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/jrdsettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v9, :cond_a

    if-nez v2, :cond_a

    const/16 v19, 0x1

    :goto_5
    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 878
    const v19, 0x7f0b030c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 881
    .local v15, showWifi:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->updateShowWifiEthernet(Landroid/content/Context;)V

    .line 884
    if-eqz v6, :cond_c

    if-eqz v5, :cond_c

    .line 885
    if-nez v2, :cond_b

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 886
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mShowWifi:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 891
    :goto_7
    const v19, 0x7f0b030d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 892
    .local v14, showEthernet:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_e

    if-eqz v5, :cond_e

    .line 893
    if-nez v2, :cond_d

    const/16 v19, 0x1

    :goto_8
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 894
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mShowEthernet:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 899
    :goto_9
    const v19, 0x7f0b030e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 900
    .local v12, metered:Landroid/view/MenuItem;
    if-nez v5, :cond_1

    if-eqz v6, :cond_10

    .line 901
    :cond_1
    if-nez v2, :cond_f

    const/16 v19, 0x1

    :goto_a
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 906
    :goto_b
    const v19, 0x7f0b030f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 908
    .local v7, help:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090906

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, helpUrl:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 909
    invoke-static {v3, v7, v8}, Lcom/android/jrdsettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 913
    :goto_c
    return-void

    .line 807
    .end local v4           #currentTab:Ljava/lang/String;
    .end local v5           #hasReadyMobileRadio:Z
    .end local v6           #hasWifiRadio:Z
    .end local v7           #help:Landroid/view/MenuItem;
    .end local v8           #helpUrl:Ljava/lang/String;
    .end local v9           #isOwner:Z
    .end local v10           #isSimNotReady:Z
    .end local v11           #menuBgDataSwitch:Ljava/lang/String;
    .end local v12           #metered:Landroid/view/MenuItem;
    .end local v14           #showEthernet:Landroid/view/MenuItem;
    .end local v15           #showWifi:Landroid/view/MenuItem;
    .end local v18           #split4g:Landroid/view/MenuItem;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 822
    .restart local v4       #currentTab:Ljava/lang/String;
    .restart local v5       #hasReadyMobileRadio:Z
    .restart local v6       #hasWifiRadio:Z
    .restart local v9       #isOwner:Z
    .restart local v10       #isSimNotReady:Z
    :cond_3
    const-string v19, "sim1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "sim3"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 824
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/jrdsettings/DataUsageSummary;->getCurrentSlot(Ljava/lang/String;)I

    move-result v17

    .line 825
    .local v17, slotId:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v16

    .line 826
    .local v16, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v19, "DataUsage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "slotId : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " simInfo : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz v16, :cond_5

    .line 828
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 829
    .local v13, operatorName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const v21, 0x7f09086f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->getDataRoaming(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 836
    .end local v13           #operatorName:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 839
    .end local v16           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v17           #slotId:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 862
    .restart local v11       #menuBgDataSwitch:Ljava/lang/String;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 866
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 872
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 875
    .restart local v18       #split4g:Landroid/view/MenuItem;
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 885
    .restart local v15       #showWifi:Landroid/view/MenuItem;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 888
    :cond_c
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 893
    .restart local v14       #showEthernet:Landroid/view/MenuItem;
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 896
    :cond_e
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 901
    .restart local v12       #metered:Landroid/view/MenuItem;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 903
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 911
    .restart local v7       #help:Landroid/view/MenuItem;
    .restart local v8       #helpUrl:Ljava/lang/String;
    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 727
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 728
    const-string v1, "DataUsage"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsAirplaneModeOn:Z

    .line 732
    iput-boolean v4, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z

    .line 734
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 735
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 739
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary;->updateTabs()V

    .line 742
    new-instance v1, Lcom/android/jrdsettings/DataUsageSummary$5;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/DataUsageSummary$5;-><init>(Lcom/android/jrdsettings/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/DataUsageSummary$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 766
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/jrdsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 777
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter "restrictBackground"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1510
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1511
    return-void
.end method
