.class public Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
.super Ljava/lang/Object;
.source "KeyguardWidgetEditActivity.java"

# interfaces
.implements Lcom/android/jrdsettings/AppWidgetLoader$LabelledItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field appWidgetId:I

.field appWidgetPreviewId:I

.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field iconId:I

.field label:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field packageName:Ljava/lang/String;

.field previewBitmap:Landroid/graphics/Bitmap;

.field protected sResizer:Landroid/app/LauncherActivity$IconResizer;

.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "label"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->label:Ljava/lang/CharSequence;

    .line 512
    iput-object p2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->mContext:Landroid/content/Context;

    .line 513
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 517
    if-ne p1, p0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    instance-of v3, p1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 519
    check-cast v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    .line 520
    .local v0, other:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    :cond_0
    :goto_0
    return-object v0

    .line 547
    :cond_1
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 524
    const/16 v0, 0x11

    .line 525
    .local v0, result:I
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 526
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 527
    return v0
.end method
