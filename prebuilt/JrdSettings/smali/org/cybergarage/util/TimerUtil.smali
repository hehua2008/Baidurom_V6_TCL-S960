.class public final Lorg/cybergarage/util/TimerUtil;
.super Ljava/lang/Object;
.source "TimerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final wait(I)V
    .locals 2
    .parameter "waitTime"

    .prologue
    .line 23
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final waitRandom(I)V
    .locals 5
    .parameter "time"

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, p0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 32
    .local v0, waitTime:I
    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method
