.class Lcom/android/jrdsettings/JrdFontSizePreference$1;
.super Landroid/os/Handler;
.source "JrdFontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/JrdFontSizePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdFontSizePreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdFontSizePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$000(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$100(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$200(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$300(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    iget-object v1, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mIndices:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$400(Lcom/android/jrdsettings/JrdFontSizePreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$000(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$100(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$200(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$300(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    iget-object v1, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mIndices:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$400(Lcom/android/jrdsettings/JrdFontSizePreference;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$000(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$100(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$200(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$300(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    iget-object v1, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mIndices:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$400(Lcom/android/jrdsettings/JrdFontSizePreference;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->writeFontSizePreference(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$000(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$100(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$200(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$300(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    iget-object v1, p0, Lcom/android/jrdsettings/JrdFontSizePreference$1;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mIndices:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$400(Lcom/android/jrdsettings/JrdFontSizePreference;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/JrdFontSizePreference;->writeFontSizePreference(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
