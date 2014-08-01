.class public Lcom/android/jrdsettings/powersaver/JrdAppPicker;
.super Landroid/app/ListActivity;
.source "JrdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;,
        Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;,
        Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private hidePackageList:Ljava/util/List;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;

.field mJrdFileUtils:Landroid/os/JrdFileUtils;

.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whiteListFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$1;

    invoke-direct {v0}, Lcom/android/jrdsettings/powersaver/JrdAppPicker$1;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    const-string v0, "JrdAppPicker"

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/whitelist"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->whiteListFile:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/powersaver/JrdAppPicker;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public initWhiteList()V
    .locals 7

    .prologue
    .line 155
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v4, packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 160
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_2
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x4

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 97
    .local v3, inflate:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 99
    const v6, 0x7f040081

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, customView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 102
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 103
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.android.deskclock"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.android.calendar"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.mediatek.bluetooth"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.android.contacts"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.android.mms"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.android.jrdsettings"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.jrdcom.weather"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;

    const-string v7, "com.jrdcom.fota"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v6, Landroid/os/JrdFileUtils;

    const-string v7, "/data/system/whitelist"

    invoke-direct {v6, v7}, Landroid/os/JrdFileUtils;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mJrdFileUtils:Landroid/os/JrdFileUtils;

    .line 113
    invoke-static {}, Landroid/os/JrdFileUtils;->getWhiteList()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mMap:Ljava/util/HashMap;

    .line 114
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mMap:Ljava/util/HashMap;

    sget-object v7, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 115
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 117
    const-string v6, "firstboot"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 118
    .local v5, sharedpreferences:Landroid/content/SharedPreferences;
    const-string v6, "firstboot"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 119
    .local v2, firstboot:Z
    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->initWhiteList()V

    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 123
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "firstboot"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 131
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #firstboot:Z
    .end local v5           #sharedpreferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    new-instance v6, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;

    invoke-direct {v6, p0, p0}, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;-><init>(Lcom/android/jrdsettings/powersaver/JrdAppPicker;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mAdapter:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;

    .line 132
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mAdapter:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    if-gtz v6, :cond_2

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 138
    :goto_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 141
    return-void

    .line 127
    .restart local v2       #firstboot:Z
    .restart local v5       #sharedpreferences:Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Landroid/os/JrdFileUtils;->getWhiteList()Ljava/util/HashMap;

    move-result-object v6

    sget-object v7, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    goto :goto_0

    .line 135
    .end local v2           #firstboot:Z
    .end local v5           #sharedpreferences:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mAdapter:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;

    invoke-virtual {p0, v6}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 180
    if-nez p3, :cond_0

    .line 213
    :goto_0
    return-void

    .line 183
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 186
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mAdapter:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;

    invoke-virtual {v3, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;

    .line 187
    .local v0, app:Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    iget-boolean v3, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->checked:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->checked:Z

    .line 188
    iget-object v3, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 189
    .local v2, appName:Ljava/lang/String;
    iget v3, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->appId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, appId:Ljava/lang/String;
    iget-boolean v3, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->checked:Z

    if-eqz v3, :cond_3

    .line 191
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mAdapter:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 187
    .end local v1           #appId:Ljava/lang/String;
    .end local v2           #appName:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 201
    .restart local v1       #appId:Ljava/lang/String;
    .restart local v2       #appName:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 225
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 227
    .local v0, powsavermode:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mMap:Ljava/util/HashMap;

    sget-object v2, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22 appwhitelist ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mJrdFileUtils:Landroid/os/JrdFileUtils;

    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Landroid/os/JrdFileUtils;->writeWhiteList(Ljava/util/HashMap;)V

    .line 232
    :cond_0
    return-void

    .end local v0           #powsavermode:Z
    :cond_1
    move v0, v1

    .line 225
    goto :goto_0
.end method
