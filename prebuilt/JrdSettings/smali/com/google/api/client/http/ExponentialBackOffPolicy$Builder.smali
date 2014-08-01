.class public Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
.super Ljava/lang/Object;
.source "ExponentialBackOffPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/ExponentialBackOffPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private initialIntervalMillis:I

.field private maxElapsedTimeMillis:I

.field private maxIntervalMillis:I

.field private multiplier:D

.field private randomizationFactor:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->initialIntervalMillis:I

    .line 380
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->randomizationFactor:D

    .line 385
    const-wide/high16 v0, 0x3ff8

    iput-wide v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->multiplier:D

    .line 391
    const v0, 0xea60

    iput v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxIntervalMillis:I

    .line 398
    const v0, 0xdbba0

    iput v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxElapsedTimeMillis:I

    .line 401
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/ExponentialBackOffPolicy;
    .locals 8

    .prologue
    .line 405
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy;

    iget v1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->initialIntervalMillis:I

    iget-wide v2, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->randomizationFactor:D

    iget-wide v4, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->multiplier:D

    iget v6, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxIntervalMillis:I

    iget v7, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxElapsedTimeMillis:I

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>(IDDII)V

    return-object v0
.end method

.method public final getInitialIntervalMillis()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->initialIntervalMillis:I

    return v0
.end method

.method public final getMaxElapsedTimeMillis()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxElapsedTimeMillis:I

    return v0
.end method

.method public final getMaxIntervalMillis()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxIntervalMillis:I

    return v0
.end method

.method public final getMultiplier()D
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->multiplier:D

    return-wide v0
.end method

.method public final getRandomizationFactor()D
    .locals 2

    .prologue
    .line 436
    iget-wide v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->randomizationFactor:D

    return-wide v0
.end method

.method public setInitialIntervalMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 0
    .parameter "initialIntervalMillis"

    .prologue
    .line 422
    iput p1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->initialIntervalMillis:I

    .line 423
    return-object p0
.end method

.method public setMaxElapsedTimeMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 0
    .parameter "maxElapsedTimeMillis"

    .prologue
    .line 515
    iput p1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxElapsedTimeMillis:I

    .line 516
    return-object p0
.end method

.method public setMaxIntervalMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 0
    .parameter "maxIntervalMillis"

    .prologue
    .line 486
    iput p1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->maxIntervalMillis:I

    .line 487
    return-object p0
.end method

.method public setMultiplier(D)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 0
    .parameter "multiplier"

    .prologue
    .line 467
    iput-wide p1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->multiplier:D

    .line 468
    return-object p0
.end method

.method public setRandomizationFactor(D)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 0
    .parameter "randomizationFactor"

    .prologue
    .line 450
    iput-wide p1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->randomizationFactor:D

    .line 451
    return-object p0
.end method
