.class public Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
.super Ljava/lang/Object;
.source "MockHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/testing/http/MockHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private supportedOptionalMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    sget-object v0, Lcom/google/api/client/testing/http/MockHttpTransport;->DEFAULT_SUPPORTED_OPTIONAL_METHODS:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->supportedOptionalMethods:Ljava/util/Set;

    .line 159
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/testing/http/MockHttpTransport;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/google/api/client/testing/http/MockHttpTransport;

    iget-object v1, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->supportedOptionalMethods:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/google/api/client/testing/http/MockHttpTransport;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final getSupportedOptionalMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->supportedOptionalMethods:Ljava/util/Set;

    return-object v0
.end method

.method public setSupportedOptionalMethods(Ljava/util/Set;)Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;)",
            "Lcom/google/api/client/testing/http/MockHttpTransport$Builder;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, supportedOptionalMethods:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/api/client/http/HttpMethod;>;"
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->supportedOptionalMethods:Ljava/util/Set;

    .line 186
    return-object p0
.end method
