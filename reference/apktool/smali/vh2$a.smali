.class public Lvh2$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvh2$a$a;
    }
.end annotation

.annotation runtime Lno6;
    name = "Object"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Key"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "VersionId"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ETag"
        required = false
    .end annotation
.end field

.field private d:Lvh2$a$a;
    .annotation runtime Lat2;
        name = "LastModifiedTime"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "Size"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lvh2$a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lvh2$a;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lvh2$a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvh2$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lvh2$a;->c:Ljava/lang/String;

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lvh2$a$a;

    .line 11
    .line 12
    invoke-direct {p1, p4}, Lvh2$a$a;-><init>(Ljava/time/ZonedDateTime;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iput-object p1, p0, Lvh2$a;->d:Lvh2$a$a;

    .line 16
    .line 17
    iput-object p5, p0, Lvh2$a;->e:Ljava/lang/Long;

    .line 18
    .line 19
    return-void
.end method
