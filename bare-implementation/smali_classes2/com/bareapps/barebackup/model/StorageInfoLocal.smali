.class public abstract Lcom/bareapps/barebackup/model/StorageInfoLocal;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bareapps/barebackup/model/StorageInfoLocal$a;,
        Lcom/bareapps/barebackup/model/StorageInfoLocal$b;,
        Lcom/bareapps/barebackup/model/StorageInfoLocal$c;,
        Lcom/bareapps/barebackup/model/StorageInfoLocal$Success;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bareapps/barebackup/model/StorageInfoLocal$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bareapps/barebackup/model/StorageInfoLocal$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/bareapps/barebackup/model/StorageInfoLocal$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bareapps/barebackup/model/StorageInfoLocal;->Companion:Lcom/bareapps/barebackup/model/StorageInfoLocal$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bareapps/barebackup/model/StorageInfoLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
