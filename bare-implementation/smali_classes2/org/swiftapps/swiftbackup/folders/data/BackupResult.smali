.class public abstract Lorg/swiftapps/swiftbackup/folders/data/BackupResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;,
        Lorg/swiftapps/swiftbackup/folders/data/BackupResult$NoChange;,
        Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;
    }
.end annotation


# instance fields
.field private final isSuccess:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;->isSuccess:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final isSuccess()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;->isSuccess:Z

    .line 2
    .line 3
    return p0
.end method
