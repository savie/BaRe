.class Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory$DummyTypeAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyTypeAdapterFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory$DummyTypeAdapterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/Gson;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    const-string p1, "Factory should not be used"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
