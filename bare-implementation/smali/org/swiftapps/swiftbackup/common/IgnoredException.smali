.class public Lorg/swiftapps/swiftbackup/common/IgnoredException;
.super Ljava/lang/Exception;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/common/IgnoredException;->cause:Ljava/lang/Throwable;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/common/IgnoredException;->cause:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object p0
.end method
