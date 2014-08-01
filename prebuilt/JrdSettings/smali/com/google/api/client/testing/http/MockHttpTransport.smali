.class public Lcom/google/api/client/testing/http/MockHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "MockHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SUPPORTED_OPTIONAL_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private supportedOptionalMethods:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/client/http/HttpMethod;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/testing/http/MockHttpTransport;->DEFAULT_SUPPORTED_OPTIONAL_METHODS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 54
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, supportedOptionalMethods:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/api/client/http/HttpMethod;>;"
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 54
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    .line 65
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static builder()Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;

    invoke-direct {v0}, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockHttpTransport;->supportsHead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcom/google/api/client/http/HttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockHttpTransport;->supportsPatch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/google/api/client/http/HttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

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
    .line 80
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    return-object v0
.end method

.method public setSupportedOptionalMethods(Ljava/util/EnumSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, supportedOptionalMethods:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/api/client/http/HttpMethod;>;"
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    .line 88
    return-void
.end method

.method public supportsHead()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public supportsPatch()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
