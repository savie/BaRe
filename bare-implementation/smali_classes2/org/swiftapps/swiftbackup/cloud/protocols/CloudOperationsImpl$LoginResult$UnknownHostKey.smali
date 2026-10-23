.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;
.super Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownHostKey"
.end annotation


# instance fields
.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpw5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/List<",
            "Lpw5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;-><init>(Ljava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;->properties:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getProperties()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpw5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;->properties:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
