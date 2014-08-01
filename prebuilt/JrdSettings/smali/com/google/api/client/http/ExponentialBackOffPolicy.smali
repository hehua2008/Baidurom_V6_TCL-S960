.class public Lcom/google/api/client/http/ExponentialBackOffPolicy;
.super Ljava/lang/Object;
.source "ExponentialBackOffPolicy.java"

# interfaces
.implements Lcom/google/api/client/http/BackOffPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MILLIS:I = 0x1f4

.field public static final DEFAULT_MAX_ELAPSED_TIME_MILLIS:I = 0xdbba0

.field public static final DEFAULT_MAX_INTERVAL_MILLIS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 1.5

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5


# instance fields
.field private currentIntervalMillis:I

.field private final initialIntervalMillis:I

.field private final maxElapsedTimeMillis:I

.field private final maxIntervalMillis:I

.field private final multiplier:D

.field private final randomizationFactor:D

.field startTimeNanos:J


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 160
    const/16 v1, 0x1f4

    const-wide/high16 v2, 0x3fe0

    const-wide/high16 v4, 0x3ff8

    const v6, 0xea60

    const v7, 0xdbba0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>(IDDII)V

    .line 162
    return-void
.end method

.method constructor <init>(IDDII)V
    .locals 7
    .parameter "initialIntervalMillis"
    .parameter "randomizationFactor"
    .parameter "multiplier"
    .parameter "maxIntervalMillis"
    .parameter "maxElapsedTimeMillis"

    .prologue
    const-wide/high16 v5, 0x3ff0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 180
    const-wide/16 v3, 0x0

    cmpg-double v0, v3, p2

    if-gtz v0, :cond_1

    cmpg-double v0, p2, v5

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 181
    cmpl-double v0, p4, v5

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 182
    if-lt p6, p1, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    if-lez p7, :cond_4

    :goto_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 184
    iput p1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->initialIntervalMillis:I

    .line 185
    iput-wide p2, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->randomizationFactor:D

    .line 186
    iput-wide p4, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->multiplier:D

    .line 187
    iput p6, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->maxIntervalMillis:I

    .line 188
    iput p7, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->maxElapsedTimeMillis:I

    .line 189
    invoke-virtual {p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;->reset()V

    .line 190
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    :cond_1
    move v0, v2

    .line 180
    goto :goto_1

    :cond_2
    move v0, v2

    .line 181
    goto :goto_2

    :cond_3
    move v0, v2

    .line 182
    goto :goto_3

    :cond_4
    move v1, v2

    .line 183
    goto :goto_4
.end method

.method public static builder()Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;-><init>()V

    return-object v0
.end method

.method static getRandomValueFromInterval(DDI)I
    .locals 11
    .parameter "randomizationFactor"
    .parameter "random"
    .parameter "currentIntervalMillis"

    .prologue
    .line 261
    int-to-double v7, p4

    mul-double v0, p0, v7

    .line 262
    .local v0, delta:D
    int-to-double v7, p4

    sub-double v4, v7, v0

    .line 263
    .local v4, minInterval:D
    int-to-double v7, p4

    add-double v2, v7, v0

    .line 267
    .local v2, maxInterval:D
    sub-double v7, v2, v4

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v7, v9

    mul-double/2addr v7, p2

    add-double/2addr v7, v4

    double-to-int v6, v7

    .line 268
    .local v6, randomValue:I
    return v6
.end method

.method private incrementCurrentInterval()V
    .locals 6

    .prologue
    .line 342
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->currentIntervalMillis:I

    int-to-double v0, v0

    iget v2, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->maxIntervalMillis:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->multiplier:D

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 343
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->maxIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->currentIntervalMillis:I

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->currentIntervalMillis:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->multiplier:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->currentIntervalMillis:I

    goto :goto_0
.end method


# virtual methods
.method public final getCurrentIntervalMillis()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->currentIntervalMillis:I

    return v0
.end method

.method public final getElapsedTimeMillis()J
    .locals 4

    .prologue
    .line 334
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->startTimeNanos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getInitialIntervalMillis()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->initialIntervalMillis:I

    return v0
.end method

.method public final getMaxElapsedTimeMillis()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->maxElapsedTimeMillis:I

    return v0
.end method

.method public final getMaxIntervalMillis()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->maxIntervalMillis:I

    return v0
.end method

.method public final getMultiplier()D
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->multiplier:D

    return-wide v0
.end method

.method public getNextBackOffMillis()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;->getElapsedTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->maxElapsedTimeMillis:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 247
    const-wide/16 v1, -0x1

    .line 252
    :goto_0
    return-wide v1

    .line 249
    :cond_0
    iget-wide v1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->randomizationFactor:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget v5, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->currentIntervalMillis:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/api/client/http/ExponentialBackOffPolicy;->getRandomValueFromInterval(DDI)I

    move-result v0

    .line 251
    .local v0, randomizedInterval:I
    invoke-direct {p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;->incrementCurrentInterval()V

    .line 252
    int-to-long v1, v0

    goto :goto_0
.end method

.method public final getRandomizationFactor()D
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->randomizationFactor:D

    return-wide v0
.end method

.method public isBackOffRequired(I)Z
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 211
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 209
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->initialIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->currentIntervalMillis:I

    .line 220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->startTimeNanos:J

    .line 221
    return-void
.end method
