// retrieve Team Member data on load

window.onload = (event) => {
  axios({
    url: 'http://craft.test/api',
    method: 'post',
    data: {
      query: `
      query allTeamMembers {
        entries {
          ... on teamMembers_teamMembers_Entry {
            title
            positionTitle
            featuredImage {
              title
              url
            }
            emailAddress
            phoneNumber
          }
        }
      }
        `
    }
  }).then((result) => {
    // deconstruct the entries array from retrieved data
    const { entries } = result.data.data;
    renderTeamMembers(entries);
  });
};

// will create and render document nodes based on fetched data

function renderTeamMembers(data) {
  const teamMembersContainer = document.getElementById('team-members');

  const createMemberCard = (teamMember) => {
    // grab necessary data && cleanup names
    const { title, featuredImage, emailAddress, phoneNumber, positionTitle } = teamMember;

    // construct team member's card
    const memberCard = document.createElement("div");
    memberCard.classList.add('card');

    // create team member img node
    const memberImage = document.createElement("img");
    memberImage.setAttribute("src", featuredImage[0].url);
    memberImage.setAttribute("alt", title);
    memberImage.classList.add("member-img");

    // append image to card
    memberCard.append(memberImage);


    // create team member title node
    const memberTitle = document.createElement("p");
    memberTitle.classList.add("member-name");
    memberTitle.textContent = title;

    // append title to card
    memberCard.append(memberTitle);

    // create position title node
    const memberPosTitle = document.createElement("p");
    memberPosTitle.classList.add("member-title");
    memberPosTitle.textContent = positionTitle;

    // append position title to card
    memberCard.append(memberPosTitle);

    // create phone number node
    const memberPhone = document.createElement("a");
    memberPhone.setAttribute('href', `tel:${phoneNumber}`);
    memberPhone.classList.add("member-contact-info");
    memberPhone.textContent = phoneNumber;

    // append phone number to card
    memberCard.append(memberPhone);

    // create email node
    const memberEmail = document.createElement("a");
    memberEmail.setAttribute('href', `mailto:${emailAddress}`);
    memberEmail.classList.add("member-contact-info");
    memberEmail.textContent = emailAddress;

    // append email to card
    memberCard.append(memberEmail);

    // append memberCard to Team Members Container
    teamMembersContainer.append(memberCard);

  };

  data.forEach(member => createMemberCard(member));
}
