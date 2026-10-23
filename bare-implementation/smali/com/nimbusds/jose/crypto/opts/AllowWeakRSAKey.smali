.class public final Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWSSignerOption;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# static fields
.field private static final SINGLETON:Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;->SINGLETON:Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;->SINGLETON:Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AllowWeakRSAKey"

    .line 2
    .line 3
    return-object p0
.end method
