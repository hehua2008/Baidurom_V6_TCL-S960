.class public Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
.super Ljava/lang/Object;
.source "KeyguardWidgetOrderActivity.java"

# interfaces
.implements Lcom/android/jrdsettings/AppWidgetLoader$LabelledItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;
    }
.end annotation


# static fields
.field protected static sResizer:Landroid/app/LauncherActivity$IconResizer;


# instance fields
.field appWidgetPreviewId:I

.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field iconId:I

.field itemWidgetId:I

.field label:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mWidgetPreviewLoader:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "context"
    .parameter "label"

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->label:Ljava/lang/CharSequence;

    .line 239
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->mContext:Landroid/content/Context;

    .line 240
    return-void
.end method


# virtual methods
.method cancelLoadingWidgetPreview()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->mWidgetPreviewLoader:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->mWidgetPreviewLoader:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->mWidgetPreviewLoader:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    .line 252
    :cond_0
    return-void
.end method

.method getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 272
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method loadWidgetPreview(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 243
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->mWidgetPreviewLoader:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    .line 244
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->mWidgetPreviewLoader:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method
