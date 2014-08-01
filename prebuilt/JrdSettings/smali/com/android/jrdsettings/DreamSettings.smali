.class public Lcom/android/jrdsettings/DreamSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/DreamSettings$PackageReceiver;,
        Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/jrdsettings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/jrdsettings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/jrdsettings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/jrdsettings/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/DreamSettings$PackageReceiver;-><init>(Lcom/android/jrdsettings/DreamSettings;Lcom/android/jrdsettings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DreamSettings;->mPackageReceiver:Lcom/android/jrdsettings/DreamSettings$PackageReceiver;

    .line 371
    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/DreamSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/jrdsettings/DreamSettings;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/DreamSettings;)Lcom/android/jrdsettings/DreamBackend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/DreamSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/jrdsettings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "menu"
    .parameter "titleRes"
    .parameter "actionEnum"
    .parameter "isEnabled"
    .parameter "onClick"

    .prologue
    .line 175
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 176
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 178
    new-instance v1, Lcom/android/jrdsettings/DreamSettings$4;

    invoke-direct {v1, p0, p5}, Lcom/android/jrdsettings/DreamSettings$4;-><init>(Lcom/android/jrdsettings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 185
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0904f6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0904f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0904f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 203
    .local v1, items:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/jrdsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/jrdsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    .local v0, initialSelection:I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0904f9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/jrdsettings/DreamSettings$5;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/DreamSettings$5;-><init>(Lcom/android/jrdsettings/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 203
    .end local v0           #initialSelection:I
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/jrdsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/jrdsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 246
    new-instance v3, Lcom/android/jrdsettings/DreamBackend;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 247
    .local v3, backend:Lcom/android/jrdsettings/DreamBackend;
    invoke-virtual {v3}, Lcom/android/jrdsettings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 248
    .local v4, isEnabled:Z
    invoke-virtual {v3}, Lcom/android/jrdsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 249
    .local v2, activatedOnSleep:Z
    invoke-virtual {v3}, Lcom/android/jrdsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 250
    .local v0, activatedOnDock:Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 251
    .local v1, activatedOnEither:Z
    :goto_0
    if-nez v4, :cond_2

    const v5, 0x7f0904f7

    :cond_0
    :goto_1
    return v5

    .end local v1           #activatedOnEither:Z
    :cond_1
    move v1, v5

    .line 250
    goto :goto_0

    .line 251
    .restart local v1       #activatedOnEither:Z
    :cond_2
    if-eqz v1, :cond_3

    const v5, 0x7f0904f3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v5, 0x7f0904f5

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    const v5, 0x7f0904f6

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 259
    new-instance v0, Lcom/android/jrdsettings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, backend:Lcom/android/jrdsettings/DreamBackend;
    invoke-virtual {v0}, Lcom/android/jrdsettings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 261
    .local v1, isEnabled:Z
    if-nez v1, :cond_0

    .line 262
    const v2, 0x7f0904f7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/jrdsettings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 289
    return-void
.end method

.method private refreshFromBackend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 269
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/jrdsettings/DreamSettings;->mRefreshing:Z

    .line 271
    iget-object v6, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/jrdsettings/DreamBackend;->isEnabled()Z

    move-result v2

    .line 272
    .local v2, dreamsEnabled:Z
    iget-object v6, p0, Lcom/android/jrdsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 273
    iget-object v6, p0, Lcom/android/jrdsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 275
    :cond_0
    iget-object v6, p0, Lcom/android/jrdsettings/DreamSettings;->mAdapter:Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 276
    if-eqz v2, :cond_1

    .line 277
    iget-object v6, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/jrdsettings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 278
    .local v1, dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/android/jrdsettings/DreamSettings;->mAdapter:Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 280
    .end local v1           #dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, arr$:[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 282
    .local v5, menuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v0           #arr$:[Landroid/view/MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #menuItem:Landroid/view/MenuItem;
    :cond_2
    iput-boolean v8, p0, Lcom/android/jrdsettings/DreamSettings;->mRefreshing:Z

    .line 284
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 128
    const-string v2, "onActivityCreated(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 133
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f0904f8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 137
    new-instance v2, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;

    iget-object v3, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/jrdsettings/DreamSettings;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/jrdsettings/DreamSettings;->mAdapter:Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;

    .line 138
    iget-object v2, p0, Lcom/android/jrdsettings/DreamSettings;->mAdapter:Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 78
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    iput-object p1, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v6, 0x10

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 85
    const-string v3, "onCreate(%s)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/android/jrdsettings/DreamBackend;

    invoke-direct {v3, v0}, Lcom/android/jrdsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    .line 92
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 94
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x207000b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/jrdsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    .line 97
    iget-object v3, p0, Lcom/android/jrdsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/jrdsettings/DreamSettings$1;

    invoke-direct {v4, p0}, Lcom/android/jrdsettings/DreamSettings$1;-><init>(Lcom/android/jrdsettings/DreamSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 109
    .local v2, padding:I
    iget-object v3, p0, Lcom/android/jrdsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 117
    invoke-virtual {p0, v8}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 118
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 190
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    if-ne p1, v4, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/jrdsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 143
    const-string v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/jrdsettings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 148
    .local v4, isEnabled:Z
    const v2, 0x7f0904fa

    const/4 v3, 0x2

    new-instance v5, Lcom/android/jrdsettings/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/android/jrdsettings/DreamSettings$2;-><init>(Lcom/android/jrdsettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 157
    .local v6, start:Landroid/view/MenuItem;
    const v2, 0x7f0904f9

    const/4 v3, 0x1

    new-instance v5, Lcom/android/jrdsettings/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/android/jrdsettings/DreamSettings$3;-><init>(Lcom/android/jrdsettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 168
    .local v7, whenToDream:Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/jrdsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 171
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 124
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/DreamSettings;->mPackageReceiver:Lcom/android/jrdsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 231
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 233
    invoke-direct {p0}, Lcom/android/jrdsettings/DreamSettings;->refreshFromBackend()V

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/jrdsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/jrdsettings/DreamSettings;->mPackageReceiver:Lcom/android/jrdsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    return-void
.end method
