.class Lcom/android/jrdsettings/wifi/WifiAPITest$3;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WifiAPITest;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiAPITest$3;->this$0:Lcom/android/jrdsettings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/jrdsettings/wifi/WifiAPITest$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiAPITest$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 151
    .local v0, value:Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiAPITest$3;->this$0:Lcom/android/jrdsettings/wifi/WifiAPITest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/jrdsettings/wifi/WifiAPITest;->netid:I
    invoke-static {v1, v2}, Lcom/android/jrdsettings/wifi/WifiAPITest;->access$002(Lcom/android/jrdsettings/wifi/WifiAPITest;I)I

    .line 154
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiAPITest$3;->this$0:Lcom/android/jrdsettings/wifi/WifiAPITest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiAPITest;->access$100(Lcom/android/jrdsettings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiAPITest$3;->this$0:Lcom/android/jrdsettings/wifi/WifiAPITest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiAPITest;->netid:I
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/WifiAPITest;->access$000(Lcom/android/jrdsettings/wifi/WifiAPITest;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method
