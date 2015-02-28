---
title: Free and Open Source Software Licensing
navbar_title: FOSS Licensing
summary: >
    How Free and Open Source Software (FOSS) licensing
    fits into the framework of copyright,
    and how to choose a license for your software.

changelog:
- 2015/02/28: Initial draft.
---
# Free and Open Source Software Licensing

Before we get started, I would just like to note that
**I am not a lawyer, and this is not legal advice**.
I have studied copyright and software licensing in some detail,
but I cannot guarantee that the advice I give will hold up in a court of law.

* [How licenses work, in relation to copyright law](#how-licenses-work)
* [How to choose a license for your own software](#choosing-a-license)
* How to ensure that you're using licenses correctly (future revision)


## How Licenses Work

### Copyright and Software

To understand licensing, we first have to understand copyright.
(I'm focusing on the United States here, because that's where I live,
but it works the same way in most other nations.)
Computer programs are copyrightable as literary works,
and according to [17 USC § 102](https://en.wikisource.org/wiki/Copyright_Act_of_1976),

> Copyright protection subsists, in accordance with this title, in original works of authorship *fixed in any tangible medium of expression*, now known or later developed, from which they can be perceived, reproduced, or otherwise communicated, either directly or with the aid of a machine or device.

As soon as a computer program is stored on disk,
it gains copyright protection, and its author becomes the copyright owner.
This happens even if the author doesn't mark it with ©
(although doing so is considered good practice).
And 17 USC § 106 specifies that:

> Subject to sections 107 through 118, the owner of copyright under this title has the exclusive rights to do and to authorize any of the following:
>
> 1. to reproduce the copyrighted work in copies or phonorecords;
> 2. to prepare derivative works based upon the copyrighted work;
> 3. to distribute copies or phonorecords of the copyrighted work to the public by sale or other transfer of ownership, or by rental, lease, or lending;
> 4. [...] to perform the copyrighted work publicly; and
> 5. [...] to display the copyrighted work publicly.

In the case of computer programs,
this means that the author has the exclusive rights to:

* Modify the program ("prepare derivative works").
* Copy the program to other computers ("reproduce...in copies").
* Sell the program ("distribute to the public...by sale").
* Post the program on GitHub or another Web site ("distribute to the public" and/or "display publicly").

This does not amount to dictatorial control over the program,
because there are other limitations on copyright.
For example, once someone has a legitimate copy of a copyrighted work,
the copyright owner cannot restrict how they use it.
And fair use rights (specified in 17 USC § 107)
allow copies and derivative works to be made for purposes such as
criticism, comment, news reporting, teaching, or research.

But it does prevent others from exercising the rights
which are required for software to be Free and Open Source.
The Free Software Foundation, for example,
defines these as the [four essential freedoms of Free Software][free-defn]:

* Freedom 0: The freedom to run the program as you wish, for any purpose.
* Freedom 1: The freedom to study how the program works,
  and change it so it does your computing as you wish.
* Freedom 2: The freedom to redistribute copies so you can help your neighbor.
* Freedom 3: The freedom to distribute copies of your modified versions to others.

The copyright holder's exclusive right to "prepare derivative works"
would get in the way of freedom 3, and probably also 1.
And the exclusive right to "distribute copies...to the public"
would get in the way of freedoms 2 and 3.
(The rights specified in the [Open Source Definition][open-defn]
would be similarly hampered.)

So in order for Free and Open Source Software to become possible,
the work's copyright owner must specifically authorize
those who obtain the software to exercise their 17 USC § 102 rights.
And that's where licenses come into play.

[free-defn]: https://www.gnu.org/philosophy/free-sw.html
[open-defn]: http://opensource.org/osd-annotated


### Licensing to the Rescue!

The term "license" isn't specific to software:
a copyright license is any kind of permission grant that allows others
to exercise rights which are normally reserved to the copyright holder.
There are a few rules which apply in general to licenses:

* You can choose not to license your work at all.
* You can license your work multiple times, with different licenses,
  to different groups of people.
* You can license *any* subset of your exclusive rights --- it's not
  "all or nothing."
* You can place additional conditions on each of the rights you license.
  (Silly example: "You may only prepare derivative works on Tuesdays.")
* You can revoke a license after it is issued,
  unless you specified as part of the license that you would not do so.

#### Case Study: MIT/X11

Let's take as an example the MIT/X11 license
(without the ALL-CAPS WARRANTY DISCLAIMER):

    Copyright (c) 2015 Matthew Frazier

    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files
    (the "Software"), to deal in the Software without restriction,
    including without limitation the rights to use, copy, modify, merge,
    publish, distribute, sublicense, and/or sell copies of the Software,
    and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

Essentially, this says, "you can exercise *any* of my copyright-protected rights
in this software, so long as you include this copyright notice"
(including the original statement of authorship).

Of particular note is the right to "sublicense," and to
"permit persons to whom the Software is furnished to do [all of this stuff]."
This means that the software's users can take it and license it to anyone else,
under any license they want (the GPL, for example).
However, that doesn't change the fact that
the *author* originally licensed it under the MIT/X11 license,
and it remains available under the MIT/X11 license, from the author,
as long as there's still a copy of it.
It's just an extra license that people have the option to use.

#### Case Study: GNU GPL v3

A more detailed license is the [GNU General Public License, version 3][gpl3].
I won't quote the whole thing here, but I will point out a few relevant sections:

    A “covered work” means either the unmodified Program or a
    work based on the Program.

    To “propagate” a work ... includes copying, distribution
    (with or without modification), making available to the public,
    and in some countries other activities as well.

    To “convey” a work means any kind of propagation that enables other
    parties to make or receive copies.

    2. Basic Permissions

    All rights granted under this License are granted for the term
    of copyright on the Program, and are irrevocable provided the stated
    conditions are met. This License explicitly affirms your unlimited
    permission to run the unmodified Program. [...]

    You may make, run and propagate covered works that you do not convey,
    without conditions so long as your license otherwise remains in force.
    [...]

    Conveying under any other circumstances is permitted solely
    under the conditions stated below.

The GPL starts out by granting many of the same rights as the MIT ---
you can use GPL software for any purpose,
you can copy it around for your personal use or your organization's use,
and you can make modified versions for your personal use or your organization's use,
without any limitations.

The catch comes when you "convey" the work or modified versions thereof ---
which means "make it available to others."
The copyright owner will still let you do it,
so long as you follow the rules laid down by the GPL.

* If you convey a verbatim copy, the recipient gets the same license
  from the original copyright owner that you got.
* If you modify it and convey it, you have to license your modifications
  under the GPL too.
* If you convey it without the source code, you have to provide recipients
  with the source code upon request.

And as the GPL states later,

    You are not required to accept this License in order to receive
    or run a copy of the Program. [...] However, nothing other than
    this License grants you permission to propagate or modify any
    covered work.  These actions infringe copyright if you do not
    accept this License.


## Choosing a License

Given the broad scope of copyright law, and the importance of licensing,
the obvious question is, "What license should I use?"
The answer is, "whichever one fits your needs the best!"
And I've developed a process that will help you out what license that is.

**Step 1: Are you legally obligated to use a particular license?**
The most common example of this is that
if your software is a derivative work of software licensed under the GPL,
then you *have* to license yours under the GPL too.
(The same applies to the AGPL and LGPL.)

**Step 2: Does your community have a preferred license?**
In the [Clojure](http://clojure.org/) community, for example,
most Clojure software is made available under the [Eclipse Public License][epl].
This license is used very rarely because it is not compatible with the GPL,
but in the Clojure world, it's the license of choice.

**Step 3: Do you want a permissive license, or a copyleft license?**
This is a decision you have to make for yourself,
and despite common portrayals of the permissive/copyleft debate,
it's not simply a question of "are you going to use [this kind of license],
or do you hate freedom?"

You may want to use a **permissive license** for these reasons:

* You want there to be as few barriers as possible for other developers
  to use and modify your software, so that it can make their lives easier.
* You want to encourage use of your software as widely as possible ---
  because it implements a standard, codec, or file format that you want to promote,
  or just because you want to gain reputation and feel cool.
* You want your company or other companies to be able to create commercial
  software based on your FOSS in the future, without having to worry at all
  about whether they're in compliance or not.

If so, skip to the "[Choosing a Permissive License](#choosing-a-permissive-license)" section.

You may want to use a **copyleft license** for these reasons:

* You want to ensure that users of your software always have the Four Freedoms --
  because user freedom is very important to you for ethical or
  philosophical reasons, or because your software does something important
  and dangerous like security or cryptography and you want your users to
  always be able to trust it.
* You don't want companies to use the software you developed/published for free
  to make a bunch of money, without giving something back.
* You don't want companies to develop extra proprietary features that would
  give them a commercial advantage over the community (or *your* company).

If so, skip to the "[Choosing a Copyleft License](#choosing-a-copyleft-license)" section.


### Choosing a Permissive License

The three most popular permissive licenses are:

* [Apache License version 2][apache2]
* [Modified BSD license][bsd3]
* [MIT/X11 license][mit]

The BSD and MIT/X11 are pretty much identical, so the main question is,
"do you want to use Apache or not?"
The main **advantage** is that it includes a patent grant:
anyone who licenses code under the Apache License that uses some of their patents
is prohibited from suing you for infringing those patents just by using their code.
The main **disadvantage** is that it is incompatible with
the GNU GPL version 2, and some projects (like the Linux kernel)
are only available under that version of the license.
So, here are some heuristics:

* If you know you're going to need to link with GPLv2-only software,
  like the Linux kernel or Drupal, go with **Modified BSD or MIT/X11**.
* If you're working with A/V codecs, or any other field where
  patent-related treachery is common, go with the **Apache License**.
* If your code is very small, I'd lean towards **Modified BSD or MIT/X11**,
  just to keep it simpler.

Whether to choose Modified BSD or MIT/X11 as a simple all-permissive license
is mostly a personal or community preference.
I lean towards MIT/X11, because I started out in the Lua community,
where it was the most common. But either will serve you perfectly fine.

(Unfortunately, because they are named after their universities of origin,
both the names "BSD" and "MIT" can refer to multiple different licenses.
"BSD" most commonly refers to the 3-clause version ["Modified BSD"],
but there is also a [2-clause version][bsd2] ["Simplified BSD"],
*and* an older version which is not actually Free and Open Source,
so it's worth being explicit.
In addition, both "MIT" and "X11" alone can refer to different licenses,
so I prefer the name "MIT/X11.")

*Now, you can skip to [Applying Your License](#applying-your-license).*


### Choosing a Copyleft License

In general, the only copyleft licenses you really want to use
are the GNU General Public License family.
(Other copyleft licenses are rarely seen, and often incompatible with
"mainstream" licenses in subtle and frustrating ways.)
First, you have to "draw the line" of where the copyleft takes effect:

* **[General Public License (GPL)][gpl3]:**
  If you modify the GPL'ed software, or use it as part of a larger piece of
  software (say, as a library), the result must also be licensed under the GPL.
  However, the restrictions only take effect when users convey a copy of the
  software to others.

* **[Lesser General Public License (LGPL)][lgpl3]:**
  If you modify the LGPL'ed software, you have to release the result under the
  LGPL. (As with GPL, this only applies if you convey it to others.)
  But, you can link it as a library into another program without having to
  release the larger program under the GPL.
  You only have to ensure that the user can still modify the LGPL part.

* **[Affero General Public License (AGPL)][agpl3]:**
  This works just like the GPL, with the additional requirement that
  if a copy of the software is made available over the network
  (example: running a bulletin board software on your Web server),
  you must provide all network users with the opportunity to download the
  source code as well.

Another way to think about it is with this checklist:

{: .table}
| Can someone else... | GPL | LGPL | AGPL |
|-|:-:|:-:|:-:|
| Modify it and redistribute it to people without the source? | ✗ | ✗ | ✗ |
| Use it as a library in a program, and distribute that program to people without the source? | ✗ | ✓ | ✗ |
| Modify it and run it on a Web server and not give users the source? | ✓ | ✓ | ✗ |

If you choose the GPL, you also have to decide which version to use ---
right now, there are versions 2 and 3, and you can also automatically allow
the use of future versions if you want.
Unfortunately, [the compatibility effects are complicated](https://www.gnu.org/licenses/gpl-faq.html#AllCompatibility).

In general, broader compatibility is better.
So, I'd recommend using "version 2 or later" unless
the software is in a field like A/V codecs where you wish to protect yourself
from patent-related treachery, or unless you want to ensure your software
is not used to create DRM tools. (In those cases, go with "version 3 or later.")

If you choose the LGPL, you have to make the same decision between versions 2 and 3,
except that version 2 of the GPL corresponds to version 2.1 of the LGPL.
(So say "version 2.1 or later" instead of "version 2 or later.")
The AGPL only comes in version 3, so that saves you a little effort.

The "or later" part allows the code to be licensed under a hypothetical
GPL version 4. This is usually a good thing, because it means that you won't
cause compatibility problems with future GPL versions, but it also doesn't
affect the software's licensing under current versions of the GPL --- even if
GPLv4 comes out and it sucks, everyone can keep using GPLv3.

But, if you have concerns about allowing the Free Software Foundation
to create new GPL versions that will automatically apply to your code,
replace "version 2 or later" with "version 2 or 3 only,"
and replace "version 3 or later" with "version 3 only."
(There's really no good reason to use "version 2 only" anymore,
since GPLv3 is already out and everyone knows what it's like.)


[agpl3]: https://www.gnu.org/licenses/agpl.html
[apache2]: https://github.com/licenses/lice/blob/b2f8c1eb62a1e36a5f478fe7cc684a0857dd0e50/lice/template-apache.txt
[bsd2]: https://github.com/licenses/lice/blob/b2f8c1eb62a1e36a5f478fe7cc684a0857dd0e50/lice/template-bsd2.txt
[bsd3]: https://github.com/licenses/lice/blob/b2f8c1eb62a1e36a5f478fe7cc684a0857dd0e50/lice/template-bsd3.txt
[epl]: https://github.com/licenses/lice/blob/b2f8c1eb62a1e36a5f478fe7cc684a0857dd0e50/lice/template-epl.txt
[gpl2]: https://www.gnu.org/licenses/old-licenses/gpl-2.0.html
[gpl3]: https://www.gnu.org/licenses/gpl.html
[lgpl3]: https://www.gnu.org/licenses/lgpl.html
[mit]: https://github.com/licenses/lice/blob/b2f8c1eb62a1e36a5f478fe7cc684a0857dd0e50/lice/template-mit.txt


### Applying Your License

The easiest way to make some source code available under a given license
is to put that license in the source code when you distribute it.
Traditionally, you copy the full license text into a file named `COPYING`
or `LICENSE` in the base of your code repository (or tarball).
(There is a program called [lice](https://github.com/licenses/lice) that
makes it very easy to create `LICENSE` files.)

Then, tag each file with a copyright header and a pointer to the license.
In Python programs, for example, I put a pair of lines like this in the docstring:

    :copyright: (C) 2015, Matthew Frazier
    :license:   MIT/X11, see LICENSE for details

The Apache licenses and GPL-family licenses have a longer recommended header.
Here is the GPL's:

    Copyright (C) 2015, Matthew Frazier

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

But, you don't *have* to use the full header.
Just make sure that if you're using a GPL-family license,
you indicate which version of the license you are using,
and whether later versions are acceptable.
If I were using my Python "short form" for GPL, it would look something like:

    :copyright: (C) 2015, Matthew Frazier
    :license:   GNU General Public License, version 3 or later,
                see LICENSE for details

