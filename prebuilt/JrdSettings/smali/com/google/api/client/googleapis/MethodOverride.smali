.class public final Lcom/google/api/client/googleapis/MethodOverride;
.super Ljava/lang/Object;
.source "MethodOverride.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/MethodOverride$1;
    }
.end annotation


# instance fields
.field private final override:Ljava/util/EnumSet;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/MethodOverride;->override:Ljava/util/EnumSet;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 1
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
    .line 69
    .local p1, override:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/api/client/http/HttpMethod;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/MethodOverride;->override:Ljava/util/EnumSet;

    .line 71
    return-void
.end method

.method private overrideThisMethod(Lcom/google/api/client/http/HttpRequest;)Z
    .locals 5
    .parameter "request"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v0

    .line 89
    .local v0, method:Lcom/google/api/client/http/HttpMethod;
    sget-object v3, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/api/client/googleapis/MethodOverride;->override:Ljava/util/EnumSet;

    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    sget-object v3, Lcom/google/api/client/googleapis/MethodOverride$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 98
    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 74
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 75
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/MethodOverride;->overrideThisMethod(Lcom/google/api/client/http/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v0

    .line 80
    .local v0, method:Lcom/google/api/client/http/HttpMethod;
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;

    .line 81
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 85
    .end local v0           #method:Lcom/google/api/client/http/HttpMethod;
    :cond_0
    return-void
.end method
