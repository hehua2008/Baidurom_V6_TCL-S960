.class final Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayPreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "display"

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    .line 775
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 777
    iput-object p3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 778
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 779
    const v0, 0x7f020158

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 780
    return-void
.end method


# virtual methods
.method public getDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 788
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 790
    const v2, 0x7f0b000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 791
    .local v0, deviceDetails:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 796
    .local v1, value:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 798
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 801
    .end local v1           #value:Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mOptionWifiDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1902(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 807
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    #calls: Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;I)V

    .line 808
    return-void
.end method
