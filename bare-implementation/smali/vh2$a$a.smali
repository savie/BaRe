.class public Lvh2$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvh2$a$a$a;
    }
.end annotation

.annotation runtime Lno6;
.end annotation

.annotation runtime Lxv1;
    value = Lvh2$a$a$a;
.end annotation


# instance fields
.field private a:Ljava/time/ZonedDateTime;


# direct methods
.method public constructor <init>(Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvh2$a$a;->a:Ljava/time/ZonedDateTime;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lvh2$a$a;
    .locals 2

    .line 1
    new-instance v0, Lvh2$a$a;

    .line 2
    .line 3
    sget-object v1, Lh38;->e:Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    invoke-static {p0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lvh2$a$a;-><init>(Ljava/time/ZonedDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lvh2$a$a;->a:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    sget-object v0, Lh38;->e:Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
