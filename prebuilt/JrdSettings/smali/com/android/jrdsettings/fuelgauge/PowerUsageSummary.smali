.class public Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$4;,
        Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$GetPowerSavingStatusTask;,
        Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$PowerSavingTASK;
    }
.end annotation


# static fields
.field private static final ACTION_BATTERY_PERCENTAGE_SWITCH:Ljava/lang/String; = "mediatek.intent.action.BATTERY_PERCENTAGE_SWITCH"

.field private static final CAT_POWER_SAVING_STATUS_COMMAND:Ljava/lang/String; = "cat /data/.tp.settings"

.field private static final DEBUG:Z = false

.field private static final DISABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

.field private static final ENABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.conf"

.field private static final H_CHECK_POWER_SAVING_MESSAGE:I = 0x2

.field private static final H_UNCHECK_POWER_SAVING_MESSAGE:I = 0x3

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_CPU_DTM:Ljava/lang/String; = "cpu_dtm"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_HELP:I = 0x3

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_POWER_THRESHOLD:I = 0x5

.field static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field private mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

.field private mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mUm:Landroid/os/UserManager;

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/fuelgauge/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 126
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1084
    new-instance v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->setBatteryPercenVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12
    .parameter "uSecNow"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 952
    .local v3, btOnTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    .line 954
    .local v10, btPower:D
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    .line 955
    .local v9, btPingCount:I
    int-to-double v0, v9

    iget-object v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    .line 957
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090741

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200d4

    iget-wide v6, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 960
    .local v8, bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/jrdsettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 1039
    iget-wide v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 1040
    :cond_0
    iget-wide v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 1041
    new-instance v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 1043
    .local v0, bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->usageTime:J

    .line 1044
    iput p5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->iconId:I

    .line 1045
    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 944
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 946
    .local v6, idlePower:D
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090744

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200e9

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    .line 948
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 541
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, notAvailable:Landroid/preference/Preference;
    const v1, 0x7f090729

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 543
    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 544
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 863
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 865
    .local v6, phoneOnPower:D
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090743

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200f6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    .line 867
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 891
    const-wide/16 v8, 0x0

    .line 892
    .local v8, power:D
    const/4 v10, 0x6

    .line 893
    .local v10, BINS:I
    const-wide/16 v5, 0x0

    .line 894
    .local v5, signalTimeMs:J
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v12, v2, :cond_0

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    .line 896
    .local v15, strengthTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 898
    add-long/2addr v5, v15

    .line 894
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 900
    .end local v15           #strengthTimeMs:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v13, v2, v17

    .line 901
    .local v13, scanningTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 903
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090742

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0200d6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    move-result-object v11

    .line 906
    .local v11, bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    long-to-double v2, v2

    const-wide/high16 v17, 0x4059

    mul-double v2, v2, v17

    long-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    iput-wide v2, v11, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 910
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 870
    const-wide/16 v8, 0x0

    .line 871
    .local v8, power:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    .line 872
    .local v5, screenOnTimeMs:J
    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    .line 875
    .local v15, screenFullPower:D
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 876
    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    .line 878
    .local v13, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    .line 879
    .local v10, brightnessTime:J
    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    .line 875
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 885
    .end local v10           #brightnessTime:J
    .end local v13           #screenBinPower:D
    :cond_0
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    .line 886
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09073f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0200da

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    .line 888
    return-void
.end method

.method private addUserUsage()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 964
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 966
    .local v13, userId:I
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 967
    .local v12, sippers:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/fuelgauge/BatterySipper;>;"
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 970
    .local v11, info:Landroid/content/pm/UserInfo;
    if-eqz v11, :cond_2

    .line 971
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v11, v2}, Lcom/android/jrdsettings/users/UserUtils;->getUserIcon(Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 972
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_1

    iget-object v1, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 973
    .local v1, name:Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_0

    .line 974
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 976
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09067c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 983
    :goto_2
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 984
    .local v6, power:D
    sget-object v2, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 985
    .local v8, bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    iput-object v10, v8, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 986
    const-string v0, "User"

    invoke-direct {p0, v8, v12, v0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/jrdsettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 964
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 972
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #power:D
    .end local v8           #bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 979
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v10, 0x0

    .line 980
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09067d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 988
    .end local v1           #name:Ljava/lang/String;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #info:Landroid/content/pm/UserInfo;
    .end local v12           #sippers:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/fuelgauge/BatterySipper;>;"
    .end local v13           #userId:I
    :cond_3
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17
    .parameter "uSecNow"

    .prologue
    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v11, v2, v7

    .line 928
    .local v11, onTimeMs:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 931
    .local v5, runningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    .line 932
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    const-wide/16 v5, 0x0

    .line 933
    :cond_0
    const-wide/16 v2, 0x0

    mul-long/2addr v2, v11

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L

    div-double v13, v2, v7

    .line 937
    .local v13, wifiPower:D
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090740

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0200f7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    move-result-object v10

    .line 939
    .local v10, bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/jrdsettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method private aggregateSippers(Lcom/android/jrdsettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/jrdsettings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 913
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 914
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    .line 916
    .local v1, wbs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuTime:J

    .line 917
    iget-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->gpsTime:J

    .line 918
    iget-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 919
    iget-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 920
    iget-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 921
    iget-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 922
    iget-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    .end local v1           #wbs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 26

    .prologue
    .line 991
    const-wide/32 v6, 0xf4240

    .line 992
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 993
    .local v2, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 995
    .local v8, WIFI_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 997
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 999
    .local v14, mobileData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 1001
    .local v20, wifiData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 1002
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    .line 1006
    .local v10, mobileBps:J
    :goto_0
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 1007
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 1008
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 1009
    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 1012
    :goto_1
    return-wide v22

    .line 1002
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_0
    const-wide/32 v10, 0x30d40

    goto :goto_0

    .line 1012
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_1
    const-wide/16 v22, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 5

    .prologue
    .line 1051
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 1052
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1053
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1054
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1055
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1057
    iget-object v3, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 1058
    :catch_0
    move-exception v1

    .line 1059
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PowerUsageSummary"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 88

    .prologue
    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/hardware/SensorManager;

    .line 637
    .local v51, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v82, v0

    .line 638
    .local v82, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v56

    .line 639
    .local v56, speedSteps:I
    move/from16 v0, v56

    new-array v0, v0, [D

    move-object/from16 v41, v0

    .line 640
    .local v41, powerCpuNormal:[D
    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 641
    .local v20, cpuSpeedStepTimes:[J
    const/16 v37, 0x0

    .local v37, p:I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v56

    if-ge v0, v1, :cond_0

    .line 642
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v41, v37

    .line 641
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 644
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v16

    .line 645
    .local v16, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v68

    .line 646
    .local v68, uSecTime:J
    const-wide/16 v14, 0x0

    .line 647
    .local v14, appWakelockTime:J
    const/16 v36, 0x0

    .line 648
    .local v36, osApp:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v70

    .line 650
    .local v70, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v70 .. v70}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 651
    .local v13, NU:I
    const/16 v32, 0x0

    .end local v37           #p:I
    .local v32, iu:I
    :goto_1
    move/from16 v0, v32

    if-ge v0, v13, :cond_19

    .line 652
    move-object/from16 v0, v70

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 654
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v39, 0x0

    .line 655
    .local v39, power:D
    const-wide/16 v28, 0x0

    .line 656
    .local v28, highestDrain:D
    const/4 v8, 0x0

    .line 658
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v44

    .line 659
    .local v44, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v21, 0x0

    .line 660
    .local v21, cpuTime:J
    const-wide/16 v18, 0x0

    .line 661
    .local v18, cpuFgTime:J
    const-wide/16 v80, 0x0

    .line 662
    .local v80, wakelockTime:J
    const-wide/16 v26, 0x0

    .line 664
    .local v26, gpsTime:J
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 667
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 668
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Proc;

    .line 669
    .local v45, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v73

    .line 670
    .local v73, userTime:J
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v58

    .line 671
    .local v58, systemTime:J
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    .line 672
    .local v24, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    .line 673
    add-long v5, v73, v58

    const-wide/16 v9, 0xa

    mul-long v65, v5, v9

    .line 674
    .local v65, tmpCpuTime:J
    const/16 v67, 0x0

    .line 676
    .local v67, totalTimeAtSpeeds:I
    const/16 v57, 0x0

    .local v57, step:I
    :goto_3
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_2

    .line 677
    move-object/from16 v0, v45

    move/from16 v1, v57

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v57

    .line 678
    move/from16 v0, v67

    int-to-long v5, v0

    aget-wide v9, v20, v57

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v67, v0

    .line 676
    add-int/lit8 v57, v57, 0x1

    goto :goto_3

    .line 680
    :cond_2
    if-nez v67, :cond_3

    const/16 v67, 0x1

    .line 682
    :cond_3
    const-wide/16 v42, 0x0

    .line 683
    .local v42, processPower:D
    const/16 v57, 0x0

    :goto_4
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_4

    .line 684
    aget-wide v5, v20, v57

    long-to-double v5, v5

    move/from16 v0, v67

    int-to-double v9, v0

    div-double v46, v5, v9

    .line 685
    .local v46, ratio:D
    move-wide/from16 v0, v65

    long-to-double v5, v0

    mul-double v5, v5, v46

    aget-wide v9, v41, v57

    mul-double/2addr v5, v9

    add-double v42, v42, v5

    .line 683
    add-int/lit8 v57, v57, 0x1

    goto :goto_4

    .line 687
    .end local v46           #ratio:D
    :cond_4
    add-long v21, v21, v65

    .line 692
    add-double v39, v39, v42

    .line 693
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 695
    :cond_5
    move-wide/from16 v28, v42

    .line 696
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 697
    :cond_6
    cmpg-double v5, v28, v42

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 699
    move-wide/from16 v28, v42

    .line 700
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 704
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v24           #foregroundTime:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v42           #processPower:D
    .end local v45           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v57           #step:I
    .end local v58           #systemTime:J
    .end local v65           #tmpCpuTime:J
    .end local v67           #totalTimeAtSpeeds:I
    .end local v73           #userTime:J
    :cond_7
    cmp-long v5, v18, v21

    if-lez v5, :cond_8

    .line 708
    move-wide/from16 v21, v18

    .line 710
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v39, v39, v5

    .line 714
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v79

    .line 716
    .local v79, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/util/Map$Entry;

    .line 717
    .local v78, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v78 .. v78}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 720
    .local v77, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v64

    .line 721
    .local v64, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v64, :cond_9

    .line 722
    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v80, v80, v5

    goto :goto_5

    .line 725
    .end local v64           #timer:Landroid/os/BatteryStats$Timer;
    .end local v77           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v78           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v80, v80, v5

    .line 726
    add-long v14, v14, v80

    .line 729
    move-wide/from16 v0, v80

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 731
    .local v37, p:D
    add-double v39, v39, v37

    .line 735
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v60

    .line 736
    .local v60, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v62

    .line 737
    .local v62, tcpBytesSent:J
    add-long v5, v60, v62

    long-to-double v5, v5

    mul-double v37, v5, v16

    .line 738
    add-double v39, v39, v37

    .line 742
    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v83, v5, v9

    .line 743
    .local v83, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    add-long v5, v5, v83

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 744
    move-wide/from16 v0, v83

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 746
    add-double v39, v39, v37

    .line 750
    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v85, v5, v9

    .line 751
    .local v85, wifiScanTimeMs:J
    move-wide/from16 v0, v85

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.scan"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 753
    add-double v39, v39, v37

    .line 757
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v52

    .line 759
    .local v52, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    .line 760
    .local v50, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/BatteryStats$Uid$Sensor;

    .line 761
    .local v48, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v55

    .line 762
    .local v55, sensorType:I
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v64

    .line 763
    .restart local v64       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v53, v5, v9

    .line 764
    .local v53, sensorTime:J
    const-wide/16 v34, 0x0

    .line 765
    .local v34, multiplier:D
    packed-switch v55, :pswitch_data_0

    .line 771
    move-object/from16 v0, v51

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v49

    .line 773
    .local v49, sensorData:Landroid/hardware/Sensor;
    if-eqz v49, :cond_b

    .line 774
    invoke-virtual/range {v49 .. v49}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v34, v0

    .line 777
    .end local v49           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v53

    long-to-double v5, v0

    mul-double v5, v5, v34

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 778
    add-double v39, v39, v37

    .line 782
    goto :goto_6

    .line 767
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v34

    .line 768
    move-wide/from16 v26, v53

    .line 769
    goto :goto_7

    .line 787
    .end local v34           #multiplier:D
    .end local v48           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v50           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v53           #sensorTime:J
    .end local v55           #sensorType:I
    .end local v64           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const/16 v31, 0x0

    .line 788
    .local v31, isOtherUser:Z
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v71

    .line 789
    .local v71, userId:I
    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-nez v5, :cond_d

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 790
    :cond_d
    new-instance v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v87, 0x0

    aput-wide v39, v12, v87

    invoke-direct/range {v4 .. v12}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 793
    .local v4, app:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuTime:J

    .line 794
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->gpsTime:J

    .line 795
    move-wide/from16 v0, v83

    iput-wide v0, v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 796
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 797
    move-wide/from16 v0, v80

    iput-wide v0, v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 798
    move-wide/from16 v0, v60

    iput-wide v0, v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 799
    move-wide/from16 v0, v62

    iput-wide v0, v4, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 800
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_10

    .line 801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 817
    move-object/from16 v36, v4

    .line 820
    .end local v4           #app:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    :cond_e
    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-eqz v5, :cond_f

    .line 821
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_14

    .line 822
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 651
    :cond_f
    :goto_9
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 802
    .restart local v4       #app:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    :cond_10
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_11

    .line 803
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 804
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, v71

    if-eq v0, v5, :cond_13

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_13

    .line 806
    const/16 v31, 0x1

    .line 807
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    .line 808
    .local v33, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/fuelgauge/BatterySipper;>;"
    if-nez v33, :cond_12

    .line 809
    new-instance v33, Ljava/util/ArrayList;

    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/fuelgauge/BatterySipper;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .restart local v33       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/fuelgauge/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    :cond_12
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 814
    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/fuelgauge/BatterySipper;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 823
    .end local v4           #app:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    :cond_14
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_15

    .line 824
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    .line 825
    :cond_15
    if-eqz v31, :cond_17

    .line 826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/Double;

    .line 827
    .local v72, userPower:Ljava/lang/Double;
    if-nez v72, :cond_16

    .line 828
    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    .line 832
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v72

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 830
    :cond_16
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v39

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    goto :goto_a

    .line 834
    .end local v72           #userPower:Ljava/lang/Double;
    :cond_17
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v39, v5

    if-lez v5, :cond_18

    move-wide/from16 v0, v39

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 835
    :cond_18
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto/16 :goto_9

    .line 843
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #isOtherUser:Z
    .end local v37           #p:D
    .end local v39           #power:D
    .end local v44           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v52           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v60           #tcpBytesReceived:J
    .end local v62           #tcpBytesSent:J
    .end local v71           #userId:I
    .end local v79           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v80           #wakelockTime:J
    .end local v83           #wifiRunningTimeMs:J
    .end local v85           #wifiScanTimeMs:J
    :cond_19
    if-eqz v36, :cond_1b

    .line 844
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v75, v5, v9

    .line 846
    .local v75, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    add-long/2addr v5, v14

    sub-long v75, v75, v5

    .line 848
    const-wide/16 v5, 0x0

    cmp-long v5, v75, v5

    if-lez v5, :cond_1b

    .line 849
    move-wide/from16 v0, v75

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v39, v5, v9

    .line 852
    .restart local v39       #power:D
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v75

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 853
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v39

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->value:D

    .line 854
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v39

    aput-wide v9, v5, v6

    .line 855
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_1a

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 856
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 859
    .end local v39           #power:D
    .end local v75           #wakeTimeMillis:J
    :cond_1b
    return-void

    .line 765
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 1017
    iget v6, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 1018
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 1019
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 1020
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 1025
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addUserUsage()V

    .line 1026
    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 1027
    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 1028
    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 1029
    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 1030
    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 1032
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1033
    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 1035
    :cond_0
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    .line 547
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v10, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->load()V

    .line 550
    :cond_0
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 551
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 552
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 553
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 554
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 556
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 557
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 558
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 559
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 560
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 561
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 562
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 565
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 566
    .local v7, powerSavingPrf:Landroid/preference/CheckBoxPreference;
    const-string v10, "cpu_dtm"

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 567
    const v10, 0x7f090134

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 568
    const v10, 0x7f090135

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    const/4 v10, -0x4

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 572
    new-instance v10, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$GetPowerSavingStatusTask;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$GetPowerSavingStatusTask;-><init>(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$1;)V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "cat /data/.tp.settings"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 573
    const-string v10, "PowerUsageSummary"

    const-string v11, "Add power saving pref"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 579
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    .line 580
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f090104

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    const/4 v11, -0x3

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 582
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "battery_percentage"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v0, 0x1

    .line 584
    .local v0, enable:Z
    :goto_0
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 585
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 586
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->setBatteryPercenVisibility()V

    .line 588
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 589
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-interface {v10, v11, v12}, Lcom/mediatek/settings/ext/IBatteryExt;->loadPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    .line 594
    new-instance v1, Lcom/android/jrdsettings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v10, v11}, Lcom/android/jrdsettings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 595
    .local v1, hist:Lcom/android/jrdsettings/fuelgauge/BatteryHistoryPreference;
    const/4 v10, -0x1

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 596
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 602
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 603
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 605
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 606
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    .line 607
    .local v9, sipper:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    invoke-virtual {v9}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4014

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_1

    .line 608
    invoke-virtual {v9}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059

    mul-double v5, v10, v12

    .line 609
    .local v5, percentOfTotal:D
    const-wide/high16 v10, 0x3ff0

    cmpg-double v10, v5, v10

    if-ltz v10, :cond_1

    .line 610
    new-instance v8, Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v8, v10, v11, v9}, Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/jrdsettings/fuelgauge/BatterySipper;)V

    .line 611
    .local v8, pref:Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v9}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    iget-wide v12, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v3, v10, v12

    .line 612
    .local v3, percentOfMax:D
    iput-wide v5, v9, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->percent:D

    .line 613
    iget-object v10, v9, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 614
    const v10, 0x7fffffff

    invoke-virtual {v9}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v11

    double-to-int v11, v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 615
    invoke-virtual {v8, v3, v4, v5, v6}, Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 616
    iget-object v10, v9, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v10, :cond_2

    .line 617
    iget-object v10, v9, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 619
    :cond_2
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 620
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    const/16 v11, 0xb

    if-le v10, v11, :cond_1

    .line 622
    .end local v3           #percentOfMax:D
    .end local v5           #percentOfTotal:D
    .end local v8           #pref:Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;
    .end local v9           #sipper:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    :cond_3
    iget-object v11, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v11

    .line 623
    :try_start_0
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 624
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v10, :cond_4

    .line 625
    new-instance v10, Ljava/lang/Thread;

    const-string v12, "BatteryUsage Icon Loader"

    invoke-direct {v10, p0, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 626
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/Thread;->setPriority(I)V

    .line 627
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 629
    :cond_4
    iget-object v10, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 631
    :cond_5
    monitor-exit v11

    .line 632
    return-void

    .line 582
    .end local v0           #enable:Z
    .end local v1           #hist:Lcom/android/jrdsettings/fuelgauge/BatteryHistoryPreference;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 631
    .restart local v0       #enable:Z
    .restart local v1       #hist:Lcom/android/jrdsettings/fuelgauge/BatteryHistoryPreference;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private setBatteryPercenVisibility()V
    .locals 5

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 161
    .local v0, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v1

    .line 162
    .local v1, isSmartBookPluggedIn:Z
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smartbook plug:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    if-eqz p1, :cond_0

    .line 193
    sget-object v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 196
    :cond_0
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 197
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    .line 200
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 201
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 202
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getBatteryExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IBatteryExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    .line 207
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 507
    const/4 v3, 0x2

    const v4, 0x7f09076a

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200b8

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x72

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    .line 510
    .local v2, refresh:Landroid/view/MenuItem;
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 514
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09090a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, helpUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    const/4 v3, 0x3

    const v4, 0x7f090903

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 516
    .local v0, help:Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/jrdsettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 518
    .end local v0           #help:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 236
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 239
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 522
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 536
    :goto_0
    return v0

    .line 524
    :pswitch_0
    iget v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 525
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 529
    :goto_1
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 527
    :cond_0
    iput v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 532
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 533
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 224
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 225
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 231
    return-void

    .line 225
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 23
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 244
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 246
    const-string v3, "cpu_dtm"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v14, p2

    .line 247
    check-cast v14, Landroid/preference/CheckBoxPreference;

    .line 248
    .local v14, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v14}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v9, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    .line 249
    .local v9, command:Ljava/lang/String;
    :goto_0
    const-string v3, "PowerUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick : command is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v3, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$PowerSavingTASK;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$PowerSavingTASK;-><init>(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$1;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    invoke-virtual {v3, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    .end local v9           #command:Ljava/lang/String;
    .end local v14           #pref:Landroid/preference/CheckBoxPreference;
    :goto_1
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    .line 417
    :goto_2
    return v3

    .line 248
    .restart local v14       #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v9, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    goto :goto_0

    .line 253
    .end local v14           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v3, "PowerUsageSummary"

    const-string v5, "click battery percentage checkbox"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, p2

    .line 254
    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 255
    .local v15, prf:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v15}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v19, 0x1

    .line 256
    .local v19, state:I
    :goto_3
    const-string v3, "PowerUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "battery_percentage"

    move/from16 v0, v19

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    new-instance v12, Landroid/content/Intent;

    const-string v3, "mediatek.intent.action.BATTERY_PERCENTAGE_SWITCH"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v12, intent:Landroid/content/Intent;
    const-string v3, "state"

    move/from16 v0, v19

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v3, "PowerUsageSummary"

    const-string v5, "sendBroadcast battery percentage switch"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v12, v5}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 255
    .end local v12           #intent:Landroid/content/Intent;
    .end local v19           #state:I
    :cond_2
    const/16 v19, 0x0

    goto :goto_3

    .line 268
    .end local v15           #prf:Landroid/preference/CheckBoxPreference;
    :cond_3
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/jrdsettings/fuelgauge/BatteryHistoryPreference;

    if-eqz v3, :cond_4

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 270
    .local v10, hist:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 271
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v11

    .line 272
    .local v11, histData:[B
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v4, args:Landroid/os/Bundle;
    const-string v3, "stats"

    invoke-virtual {v4, v3, v11}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 275
    .local v2, pa:Landroid/preference/PreferenceActivity;
    const-class v3, Lcom/android/jrdsettings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f09073a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 277
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_2

    .line 281
    .end local v2           #pa:Landroid/preference/PreferenceActivity;
    .end local v4           #args:Landroid/os/Bundle;
    .end local v10           #hist:Landroid/os/Parcel;
    .end local v11           #histData:[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lcom/mediatek/settings/ext/IBatteryExt;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    const-string v3, "PowerUsageSummary"

    const-string v5, "--> onPreferenceTreeClick PowerSavingPreference"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_2

    .line 287
    :cond_5
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;

    if-nez v3, :cond_6

    .line 288
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v13, p2

    .line 290
    check-cast v13, Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;

    .line 291
    .local v13, pgp:Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v13}, Lcom/android/jrdsettings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    move-result-object v18

    .line 292
    .local v18, sipper:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 293
    .restart local v4       #args:Landroid/os/Bundle;
    const-string v3, "title"

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v3, "percent"

    invoke-virtual/range {v18 .. v18}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v3, "gauge"

    invoke-virtual/range {v18 .. v18}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v3, "duration"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 299
    const-string v3, "iconPackage"

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v3, "iconId"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v3, "noCoverage"

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 302
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_7

    .line 303
    const-string v3, "uid"

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    :cond_7
    const-string v3, "drainType"

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->drainType:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 309
    sget-object v3, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$4;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->drainType:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 403
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const v5, 0x7f09074f

    aput v5, v20, v3

    .line 406
    .local v20, types:[I
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v22, v0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    .line 411
    .local v22, values:[D
    :cond_8
    :goto_4
    const-string v3, "types"

    move-object/from16 v0, v20

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 412
    const-string v3, "values"

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 414
    .restart local v2       #pa:Landroid/preference/PreferenceActivity;
    const-class v3, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f09073b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 417
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_2

    .line 313
    .end local v2           #pa:Landroid/preference/PreferenceActivity;
    .end local v20           #types:[I
    .end local v22           #values:[D
    :pswitch_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v21, v0

    .line 314
    .local v21, uid:Landroid/os/BatteryStats$Uid;
    const/16 v3, 0x9

    new-array v0, v3, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 325
    .restart local v20       #types:[I
    const/16 v3, 0x9

    new-array v0, v3, [D

    move-object/from16 v22, v0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x2

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x5

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x6

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x7

    const-wide/16 v5, 0x0

    aput-wide v5, v22, v3

    const/16 v3, 0x8

    const-wide/16 v5, 0x0

    aput-wide v5, v22, v3

    .line 337
    .restart local v22       #values:[D
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->drainType:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v5, Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/jrdsettings/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v3, v5, :cond_8

    .line 338
    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    .line 339
    .local v17, result:Ljava/io/Writer;
    new-instance v16, Ljava/io/PrintWriter;

    invoke-direct/range {v16 .. v17}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 340
    .local v16, printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v5, ""

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual/range {v21 .. v21}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5, v6, v7}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 341
    const-string v3, "report_details"

    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v17, Ljava/io/StringWriter;

    .end local v17           #result:Ljava/io/Writer;
    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    .line 344
    .restart local v17       #result:Ljava/io/Writer;
    new-instance v16, Ljava/io/PrintWriter;

    .end local v16           #printWriter:Ljava/io/PrintWriter;
    invoke-direct/range {v16 .. v17}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 345
    .restart local v16       #printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual/range {v21 .. v21}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5, v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 346
    const-string v3, "report_checkin_details"

    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 353
    .end local v16           #printWriter:Ljava/io/PrintWriter;
    .end local v17           #result:Ljava/io/Writer;
    .end local v20           #types:[I
    .end local v21           #uid:Landroid/os/BatteryStats$Uid;
    .end local v22           #values:[D
    :pswitch_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    .line 357
    .restart local v20       #types:[I
    const/4 v3, 0x2

    new-array v0, v3, [D

    move-object/from16 v22, v0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v5, v22, v3

    .line 362
    .restart local v22       #values:[D
    goto/16 :goto_4

    .line 365
    .end local v20           #types:[I
    .end local v22           #values:[D
    :pswitch_2
    const/4 v3, 0x6

    new-array v0, v3, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    .line 373
    .restart local v20       #types:[I
    const/4 v3, 0x6

    new-array v0, v3, [D

    move-object/from16 v22, v0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x2

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x5

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    .line 381
    .restart local v22       #values:[D
    goto/16 :goto_4

    .line 384
    .end local v20           #types:[I
    .end local v22           #values:[D
    :pswitch_3
    const/4 v3, 0x6

    new-array v0, v3, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    .line 392
    .restart local v20       #types:[I
    const/4 v3, 0x6

    new-array v0, v3, [D

    move-object/from16 v22, v0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x2

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    const/4 v3, 0x5

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v22, v3

    .line 400
    .restart local v22       #values:[D
    goto/16 :goto_4

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 314
    :array_0
    .array-data 0x4
        0x45t 0x7t 0x9t 0x7ft
        0x46t 0x7t 0x9t 0x7ft
        0x47t 0x7t 0x9t 0x7ft
        0x48t 0x7t 0x9t 0x7ft
        0x49t 0x7t 0x9t 0x7ft
        0x4bt 0x7t 0x9t 0x7ft
        0x4ct 0x7t 0x9t 0x7ft
        0x4dt 0x7t 0x9t 0x7ft
        0x4et 0x7t 0x9t 0x7ft
    .end array-data

    .line 353
    :array_1
    .array-data 0x4
        0x4ft 0x7t 0x9t 0x7ft
        0x50t 0x7t 0x9t 0x7ft
    .end array-data

    .line 365
    :array_2
    .array-data 0x4
        0x49t 0x7t 0x9t 0x7ft
        0x45t 0x7t 0x9t 0x7ft
        0x46t 0x7t 0x9t 0x7ft
        0x47t 0x7t 0x9t 0x7ft
        0x4bt 0x7t 0x9t 0x7ft
        0x4ct 0x7t 0x9t 0x7ft
    .end array-data

    .line 384
    :array_3
    .array-data 0x4
        0x4ft 0x7t 0x9t 0x7ft
        0x45t 0x7t 0x9t 0x7ft
        0x46t 0x7t 0x9t 0x7ft
        0x47t 0x7t 0x9t 0x7ft
        0x4bt 0x7t 0x9t 0x7ft
        0x4ct 0x7t 0x9t 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 213
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    invoke-direct {p0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 217
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SMARTBOOK_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1066
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v1, :cond_1

    .line 1068
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 1069
    monitor-exit v2

    return-void

    .line 1071
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/fuelgauge/BatterySipper;

    .line 1072
    .local v0, bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    invoke-virtual {v0}, Lcom/android/jrdsettings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 1072
    .end local v0           #bs:Lcom/android/jrdsettings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
