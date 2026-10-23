.class public interface abstract Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;
    }
.end annotation


# static fields
.field public static final BLOCK_ALL_ANDROID:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;

.field public static final BLOCK_ALL_JAVA:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;

.field public static final BLOCK_ALL_PLATFORM:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;

.field public static final BLOCK_INACCESSIBLE_JAVA:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;->BLOCK_INACCESSIBLE_JAVA:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;

    .line 7
    .line 8
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;->BLOCK_ALL_JAVA:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;

    .line 14
    .line 15
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$3;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;->BLOCK_ALL_ANDROID:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;

    .line 21
    .line 22
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$4;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$4;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;->BLOCK_ALL_PLATFORM:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public abstract check(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;"
        }
    .end annotation
.end method
