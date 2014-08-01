.class Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/ApnSettings;Lcom/android/jrdsettings/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/jrdsettings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 593
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 608
    :goto_0
    return-void

    .line 595
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #calls: Lcom/android/jrdsettings/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/jrdsettings/ApnSettings;->access$200(Lcom/android/jrdsettings/ApnSettings;)V

    .line 596
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 597
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/jrdsettings/ApnSettings;->access$902(Z)Z

    .line 598
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 599
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09058c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
