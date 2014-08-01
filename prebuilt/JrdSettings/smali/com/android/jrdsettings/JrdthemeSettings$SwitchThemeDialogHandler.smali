.class Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;
.super Landroid/os/Handler;
.source "JrdthemeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/JrdthemeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchThemeDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdthemeSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdthemeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x64

    .line 264
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/JrdthemeSettings;->writeThemePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    invoke-virtual {v1, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 271
    iget-object v1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->setCancelable(Z)V

    .line 273
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, msg1:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 275
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    #getter for: Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;
    invoke-static {v1}, Lcom/android/jrdsettings/JrdthemeSettings;->access$000(Lcom/android/jrdsettings/JrdthemeSettings;)Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    #getter for: Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;
    invoke-static {v1}, Lcom/android/jrdsettings/JrdthemeSettings;->access$000(Lcom/android/jrdsettings/JrdthemeSettings;)Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    #getter for: Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;
    invoke-static {v1}, Lcom/android/jrdsettings/JrdthemeSettings;->access$000(Lcom/android/jrdsettings/JrdthemeSettings;)Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 282
    .end local v0           #msg1:Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;->this$0:Lcom/android/jrdsettings/JrdthemeSettings;

    invoke-virtual {v1, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
