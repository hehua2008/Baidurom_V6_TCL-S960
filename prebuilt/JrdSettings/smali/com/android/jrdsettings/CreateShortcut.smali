.class public Lcom/android/jrdsettings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# static fields
.field private static final AUDIOPROFILE:Ljava/lang/String; = "com.android.jrdsettings.Settings$AudioProfileSettingsActivity"

.field private static final DREAM_SETTINGS:Ljava/lang/String; = "com.android.jrdsettings.Settings$DreamSettingsActivity"

.field private static final SELECT_UA:Ljava/lang/String; = "com.android.jrdsettings.Settings$SelectUAActivity"

.field private static final SOUND:Ljava/lang/String; = "com.android.jrdsettings.Settings$SoundSettingsActivity"

.field private static final TAG:Ljava/lang/String; = "CreateShortcut"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.android.jrdsettings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public makeListItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/LauncherActivity;->makeListItems()Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/LauncherActivity$ListItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 76
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 77
    const-string v4, "com.android.jrdsettings.Settings$AudioProfileSettingsActivity"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    const-string v3, "CreateShortcut"

    const-string v4, "Not support mtk audio profle ,remove it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 87
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 88
    const-string v4, "com.android.jrdsettings.Settings$DreamSettingsActivity"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    const-string v3, "CreateShortcut"

    const-string v4, "Not support dream settings, remove it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 99
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 100
    const-string v4, "com.android.jrdsettings.Settings$SelectUAActivity"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 101
    const-string v3, "CreateShortcut"

    const-string v4, "Not support UA slect, remove it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_2
    return-object v1

    .line 76
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 50
    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, shortcutIntent:Landroid/content/Intent;
    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/high16 v3, 0x7f03

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 57
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    return-void
.end method
