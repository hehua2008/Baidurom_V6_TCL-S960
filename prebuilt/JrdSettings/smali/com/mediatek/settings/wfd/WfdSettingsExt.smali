.class public Lcom/mediatek/settings/wfd/WfdSettingsExt;
.super Ljava/lang/Object;
.source "WfdSettingsExt.java"


# static fields
.field public static final DEVICE_1080P_30FPS_RESOLUTION:I = 0x7

.field public static final DEVICE_1080P_60FPS_RESOLUTION:I = 0x6

.field public static final DEVICE_1080P_ON_RESOLUTION:I = 0x5

.field public static final DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_720P_30FPS_RESOLUTION:I = 0x4

.field public static final DEVICE_720P_60FPS_RESOLUTION:I = 0x3

.field public static final DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MENU_ID_CHANGE_RESOLUTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WfdSettingsExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWfdPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;-><init>(Lcom/mediatek/settings/wfd/WfdSettingsExt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 131
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSettingsExt$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wfd/WfdSettingsExt$2;-><init>(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/wfd/WfdSettingsExt;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mWfdPreference:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionMenu(Landroid/view/Menu;Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 5
    .parameter "menu"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_display_max_resolution"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 182
    .local v0, currentResolution:I
    const-string v1, "WfdSettingsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current resolution is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v1, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    const/4 v1, 0x2

    const v3, 0x7f09019b

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 189
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 185
    goto :goto_0
.end method

.method public onOptionMenuSelected(Landroid/view/MenuItem;Landroid/app/FragmentManager;)Z
    .locals 2
    .parameter "item"
    .parameter "fragmentManager"

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 198
    new-instance v0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;

    invoke-direct {v0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;-><init>()V

    const-string v1, "change resolution"

    invoke-virtual {v0, p2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshEmptyView(ILandroid/widget/TextView;Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "featureState"
    .parameter "emptyView"
    .parameter "screen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-ne p1, v1, :cond_0

    .line 157
    const v2, 0x7f0903e8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    .local v1, wfdOnSettings:Z
    :goto_1
    const-string v3, "WfdSettingsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh UI, wfd status is off, user select is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v1, :cond_2

    .line 164
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, category:Landroid/preference/PreferenceCategory;
    const v3, 0x7f0903ed

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 167
    invoke-virtual {p3, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    .end local v1           #wfdOnSettings:Z
    :cond_1
    move v1, v2

    .line 159
    goto :goto_1

    .line 169
    .restart local v1       #wfdOnSettings:Z
    :cond_2
    const v2, 0x7f0903e7

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public registerForWfdSwicth(Landroid/preference/Preference;)V
    .locals 4
    .parameter "wfdPreference"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mWfdPreference:Landroid/preference/Preference;

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public unregisterForWfdSwicth()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method public updateWfdPreferenceSummary(Landroid/preference/Preference;)V
    .locals 5
    .parameter "wfdPreference"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 98
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    .line 99
    .local v1, wifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 100
    const-string v2, "WfdSettingsExt"

    const-string v3, "updateWfdPreferenceSummary: set preference summary as disabled"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const v2, 0x7f0903fd

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    .local v0, wifiDisplayOnSetting:Z
    :goto_1
    const-string v2, "WfdSettingsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWfdPreferenceSummary: wifiDisplayOnSetting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v0, :cond_2

    const v2, 0x7f0903fb

    :goto_2
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .end local v0           #wifiDisplayOnSetting:Z
    :cond_1
    move v0, v2

    .line 103
    goto :goto_1

    .line 106
    .restart local v0       #wifiDisplayOnSetting:Z
    :cond_2
    const v2, 0x7f0903fc

    goto :goto_2
.end method
