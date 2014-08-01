.class Lcom/jrdcom/settings/statusbar/StatusBarSettings$4;
.super Ljava/lang/Object;
.source "StatusBarSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/settings/statusbar/StatusBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jrdcom/settings/statusbar/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;


# direct methods
.method constructor <init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$4;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$4;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/jrdcom/settings/statusbar/AppInfo;Lcom/jrdcom/settings/statusbar/AppInfo;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 172
    iget-wide v0, p1, Lcom/jrdcom/settings/statusbar/AppInfo;->firstInstallTime:J

    iget-wide v2, p2, Lcom/jrdcom/settings/statusbar/AppInfo;->firstInstallTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-wide v0, p1, Lcom/jrdcom/settings/statusbar/AppInfo;->firstInstallTime:J

    iget-wide v2, p2, Lcom/jrdcom/settings/statusbar/AppInfo;->firstInstallTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 175
    const/4 v0, -0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$4;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/jrdcom/settings/statusbar/AppInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/jrdcom/settings/statusbar/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    check-cast p1, Lcom/jrdcom/settings/statusbar/AppInfo;

    .end local p1
    check-cast p2, Lcom/jrdcom/settings/statusbar/AppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$4;->compare(Lcom/jrdcom/settings/statusbar/AppInfo;Lcom/jrdcom/settings/statusbar/AppInfo;)I

    move-result v0

    return v0
.end method
